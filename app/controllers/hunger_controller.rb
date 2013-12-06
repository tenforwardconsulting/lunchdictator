class HungerController < ApplicationController
  def home
    @unrated_restaurants = current_user.unrated_restaurants
  end
end