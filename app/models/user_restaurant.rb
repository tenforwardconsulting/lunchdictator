class UserRestaurant < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant

  def days_per_week=(days)
    if days == 0
      self.chance = 0.02
    else
      self.chance = days.to_f/5.0
    end
  end

  def days_per_week
    if self.chance == 0.02
      0
    else
      (self.chance * 5).to_i
    end
  end
end