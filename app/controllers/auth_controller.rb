require "byebug"

class AuthController < ApplicationContoller

    def create #POST /login
       
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            #where user exists AND password is a match
            #send back user data and a token
            payload = {"user_id": @user.id}
            token = encode(payload)
            render json: {
                user: @user,
                token: token,
                authenticated: true
            }
        else
            #where user doesn't exist OR the password isn't correct
            render json: {
                message: "GTFO",
                authenticated: false
            }
        end
    end

end