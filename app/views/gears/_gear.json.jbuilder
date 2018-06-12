json.extract! gear, :id, :gearname, :picture, :price, :created_at, :updated_at
json.url gear_url(gear, format: :json)
