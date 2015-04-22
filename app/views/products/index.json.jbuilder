json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :price, :deposit, :classification, :rented
  json.url product_url(product, format: :json)
end
