class Restaurant < ActiveRecord::Base
  has_many :lunches
  has_many :user_restaurants
end
