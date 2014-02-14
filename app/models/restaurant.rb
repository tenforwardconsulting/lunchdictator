class Restaurant < ActiveRecord::Base
  has_many :lunches
  has_many :user_restaurants

  def chance_for(user)
    user_restaurant = user_restaurants.find_by_user_id(user.id)
    if user_restaurant
      return user_restaurant.chance
    else
      return 0
    end
  end

  def days_for(user)
    user_restaurant = user_restaurants.find_by_user_id(user.id)
    user_restaurant.try(:days_per_week)
  end
end
