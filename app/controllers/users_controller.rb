class UsersController < ApplicationController

  def friends
    render json: User.all
  end

end