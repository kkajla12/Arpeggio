json.array!(@products) do |product|
  json.extract! product, :id, :id, :name, :description, :price, :deposit, :type, :rented
  json.url product_url(product, format: :json)
end
