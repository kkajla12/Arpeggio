module ProductsHelper
  def cache_key_for_product(product)
    "product-#{product.id}-#{product.updated_at}"
  end
  def cache_key_for_product_page
    "product-page-#{Product.maximum(:updated_at)}"
  end
end
