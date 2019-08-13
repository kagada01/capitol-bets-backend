require "byebug"

class UsersController < ApplicationController
  
  def index
    users = User.all
    render json: users
  end

  def show
    
    token = request.headers["Authentication"].split(" ")[1]
    payload = decode(token)
    user = User.find(payload["user_id"])
    
      if user
        render json: user, status: :accepted
      else
        render json: {message: "Error", authenticated: false}
      end
  end
end
