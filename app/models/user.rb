class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :products, dependent: :destroy
  has_and_belongs_to_many :roles
  before_destroy :ensure_not_referenced_by_any_product

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

end
