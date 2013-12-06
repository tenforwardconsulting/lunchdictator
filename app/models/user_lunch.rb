class UserLunch < ActiveRecord::Base
  belongs_to :user
  belongs_to :lunch
end