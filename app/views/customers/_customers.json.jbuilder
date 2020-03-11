json.extract! customers, :id, :name, :email, :password_digest, :address, :countries_id, :created_at, :updated_at
json.url customers_url(customers, format: :json)
