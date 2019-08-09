require "byebug"

class UsersController < ApplicationController
  
  def show
    render json: User.find(params[:id]), status: accepted
  end

end
