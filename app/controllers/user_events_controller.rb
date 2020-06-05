class UserEventsController < ApplicationController
    def index
        user_events = UserEvent.all
        render json: user_events
    end

    # def  create
    
    # end

    # def destroy 

    # end

    

end
