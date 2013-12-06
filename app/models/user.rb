class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_lunches
  has_many :user_restaurants

  def unrated_restaurants
    if user_restaurants.count == 0 
      Restaurant.all
    else
      Restaurant.where("id not in (?)", user_restaurants.pluck(:restaurant_id))
    end
  end
end