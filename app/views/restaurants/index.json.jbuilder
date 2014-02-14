json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :beer_lunch, :walkable
  json.days_per_week restaurant.days_for(current_user)
  json.url restaurant_url(restaurant, format: :json)
end
