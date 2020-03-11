json.extract! countries, :id, :name, :latitude, :longitude, :created_at, :updated_at
json.url countries_url(countries, format: :json)
