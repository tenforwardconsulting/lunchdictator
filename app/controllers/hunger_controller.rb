class HungerController < ApplicationController
  before_filter :authenticate_user!

  def home
    @unrated_restaurants = current_user.unrated_restaurants
  end

  def go_to_lunch
    if Restaurant.count == 0
      render text: "Suggest a restaurant first!"
      return
    end
    lunch = Lunch.create
    lunch.users = User.all
    lunch.restaurant = lunch.choose_restaurant

    lunch.save!

    render text: "You are going to #{lunch.restaurant.name}"
  end
end