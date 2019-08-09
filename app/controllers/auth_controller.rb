require "byebug"

class AuthController < ApplicationContoller

    def create #POST /login
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            render json: {
                user: @user
            }
        else
            render json: {}
        end
    end

end