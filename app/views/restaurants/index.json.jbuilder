json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :beer_lunch, :walkable
  json.url restaurant_url(restaurant, format: :json)
end
