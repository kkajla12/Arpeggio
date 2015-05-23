class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def add_product(product_id)
    current_item = line_items.build(product_id: product_id)
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
    
  end
end
