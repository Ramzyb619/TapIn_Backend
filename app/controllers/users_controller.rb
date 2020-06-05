class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user   
    end

    def my_events 
        user = User.find(params[:id]).events
        render json: user   
    end

    def events_attending
        user = User.find(params[:id]).events_attending
        render json: user   
    end

     def create
        user = User.new(user_params)

        if user.save
           render :json => user
        else
           render :json => 'user'
        end
     
    end
    def user_params
        params.require(:user).permit(:name, :password)
     end


end
