class Product < ActiveRecord::Base
  validates :name, :description, :price, :deposit, :classification, :lonlat, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validate :classification_must_match_one_of_these_values

  belongs_to :user

  # paperclip
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  private
  def classification_must_match_one_of_these_values
    accepted_classifications = ["guitar", "bass", "keyboard", "violin",
                  "accessory", "speaker", "combo amplifier",
                  "amplifier cabinet", "amplifier head", "cable", "mic"]
    if !accepted_classifications.include? classification.downcase
      errors.add(:classification, ":invalid classification")
    end
  end

  def ensure_not_referenced_by_any_line_item
    if line_item.nil?
      return true
    else
      errors.add(:base, 'Line Item present')
      return false
    end
  end
end
