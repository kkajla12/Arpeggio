module UsersHelper
  def cache_key_for_product(product)
    "product-#{product.id}-#{product.updated_at}"
  end
  def cache_key_for_order(order)
    "order-#{order.id}-#{order.updated_at}"
  end
  def cache_key_for_user(user)
    "user-#{user.id}-#{user.updated_at}"
  end
end
