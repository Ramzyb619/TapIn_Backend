class UserEventsController < ApplicationController
    def index
        user_events = UserEvent.all
        render json: user_events
    end

    def  create
    user = User.find(params[:user_id])
    event = Event.find(params[:event_id])
    user_event = UserEvent.create(user_id: user.id, event_id: event.id)
    message = "You are attending #{user_event.event.title}, located at #{user_event.event.location} on #{user_event.event.date_time} "
    phone_number = user.phone_number
    TwilioTextMessenger.new(message, phone_number).call    
    render json: user_event
    end


    def destroy
        user = User.find(params[:userId])
        event = Event.find(params[:event_id])
        user_event = UserEvent.find_by user_id: user.id, event_id: event.id
        user_event.destroy
        render json: user_event
    end

    

end
