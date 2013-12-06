class Lunch < ActiveRecord::Base
  has_many :user_lunches
  has_many :users, through: :user_lunches
  belongs_to :restaurant
  
  def choose_restaurant
    Restaurant.all.shuffle.each do |restaurant|
      catch :next_restaurant do
        users.each do |user|
          chance = user.user_restaurants.where(restaurant_id: restaurant).first.try(:chance) || 1
          throw :next_restaurant if rand > chance
        end
        return restaurant
      end
    end
    nil
  end
end