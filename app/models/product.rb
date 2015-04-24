class Product < ActiveRecord::Base
  validates :name, :description, :price, :deposit, :classification, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validate :classification_must_match_one_of_these_values
  has_many :images, dependent: :destroy
  belongs_to :user
  before_destroy :ensure_not_referenced_by_any_image

  private
    def ensure_not_referenced_by_any_image
      if images.empty?
        return true
      else
        errors.add(:base, 'Images present')
        return false
      end
    end

    def classification_must_match_one_of_these_values
      accepted_classifications = ["guitar", "bass", "keyboard", "violin",
                    "accessory", "speaker", "combo amplifier",
                    "amplifier cabinet", "amplifier head", "cable", "mic"]
      if !accepted_classifications.include? classification.downcase
        errors.add(:classification, ":invalid classification")
      end
    end
end
