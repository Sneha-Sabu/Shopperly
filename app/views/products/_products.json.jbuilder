json.extract! products, :id, :name, :description, :image, :price, :brand, :categories_id, :created_at, :updated_at
json.url products_url(products, format: :json)
