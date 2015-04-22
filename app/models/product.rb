class Product < ActiveRecord::Base
	validates :name, :description, :price, :deposit, :rented, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
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
end
