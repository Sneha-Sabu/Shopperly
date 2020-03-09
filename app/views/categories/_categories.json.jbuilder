json.extract! categories, :id, :name, :created_at, :updated_at
json.url categories_url(categories, format: :json)
