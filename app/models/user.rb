class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :first_name, :last_name, :date_of_birth, :street_address,
            :locality, :postal_code, :region, :account_number,
            :routing_number, presence: true
  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_and_belongs_to_many :roles
  before_destroy :ensure_not_referenced_by_any_product, :ensure_not_referenced_by_any_order
  after_create :create_braintree_merchant_account

  def role?( role )
    !roles.find_by_name( role.to_s.camelize ).nil?
  end

  private
    def ensure_not_referenced_by_any_product
      if products.empty?
        return true
      else
        errors.add(:base, 'Products present')
        return false
      end
    end

    def ensure_not_referenced_by_any_order
      if orders.empty?
        return true
      else
        errors.add(:base, 'Orders present')
        return false
      end
    end

    def create_braintree_merchant_account
      result = Braintree::MerchantAccount.create(
        :individual => {
          :first_name => first_name,
          :last_name => last_name,
          :email => email,
          :date_of_birth => date_of_birth,
          :address => {
            :street_address => street_address,
            :locality => locality,
            :region => region,
            :postal_code => postal_code
          }
        },
        :funding => {
          :descriptor => email,
          :destination => Braintree::MerchantAccount::FundingDestination::Bank,
          :account_number => account_number,
          :routing_number => routing_number
        },
        :tos_accepted => true,
        :master_merchant_account_id => "Arpeggio",
      )

      if result.success?
        # assign unique merchant_id generated by Braintree, used for
        # remembering credit card info, etc...
        self.update(:merchant_id => result.merchant_account.id)
      else
        puts "error with Braintree request/response: #{result.message}"
      end
    end

end
