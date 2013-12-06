class UserRestaurant < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  def days_per_week=(days)
    self.chance = days.to_f/5.0 || 0.02
  end
end