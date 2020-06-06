class SessionsController < ApplicationController
     def create
        email=params[:email]
        password=params[:password]
        user = User.find_by(email: email)
        if user 
            if user.password == password 
            render json: user
                else 
                    render json: {errors: "Wrong Password"}
            end 
        else 
            render json: {errors: "User Not Found"}
        end

    end
end
