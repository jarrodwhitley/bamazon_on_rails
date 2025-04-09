json.extract! product, :id, :title, :stock, :description, :category, :tags, :price, :discountPercentage, :rating, :brand, :sku, :weight, :minimumOrderQuantity, :created_at, :updated_at
json.url product_url(product, format: :json)
