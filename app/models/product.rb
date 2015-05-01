class Product < ActiveRecord::Base
  validates :name, :description, :price, :deposit, :classification, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validate :classification_must_match_one_of_these_values
  validates :image_url, allow_blank: false, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG, or PNG image.'
  }
  belongs_to :user
  #has_many :images, dependent: :destroy
  #before_destroy :ensure_not_referenced_by_any_image

  
  private
  ##
  #  def ensure_not_referenced_by_any_image
  #    if images.empty?
  #      return true
  #    else
  #      errors.add(:base, 'Images present')
  #      return false
  #    end
  #  end

    def classification_must_match_one_of_these_values
      accepted_classifications = ["guitar", "bass", "keyboard", "violin",
                    "accessory", "speaker", "combo amplifier",
                    "amplifier cabinet", "amplifier head", "cable", "mic"]
      if !accepted_classifications.include? classification.downcase
        errors.add(:classification, ":invalid classification")
      end
    end
end
