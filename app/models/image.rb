class Image < ActiveRecord::Base
  validates :url, allow_blank: false, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG, or PNG image.'
  }
  belongs_to :product
end
