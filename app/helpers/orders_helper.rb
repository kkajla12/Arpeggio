module OrdersHelper
  def cache_key_for_order(order)
    "order-#{order.id}-#{order.updated_at}"
  end
end
