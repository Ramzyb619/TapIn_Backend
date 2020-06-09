class UserEventsController < ApplicationController
    def index
        user_events = UserEvent.all
        render json: user_events
    end

    def  create
    user = User.find(params[:user_id])
    event = Event.find(params[:event_id])
    user_event = UserEvent.create(user_id: user.id, event_id: event.id)
   
    render json: user_event
    end


    # def destroy 

    # end

    

end
