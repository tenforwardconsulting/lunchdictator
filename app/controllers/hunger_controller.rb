class HungerController < ApplicationController
  before_filter :authenticate_user!

  def home
    @unrated_restaurants = current_user.unrated_restaurants
  end
end