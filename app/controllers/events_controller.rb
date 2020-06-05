class EventsController < ApplicationController
    def index
        events = Event.all
        render json: events
    end
    def show
        event = Event.find(params[:id])
        render json: event   
    end

    # def  create
    
    # end

    # def destroy 
        
    # end

end
