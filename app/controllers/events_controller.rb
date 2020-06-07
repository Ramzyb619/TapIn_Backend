class EventsController < ApplicationController
    def index
        events = Event.all
        render json: events
    end
    def show
        event = Event.find(params[:id])
        render json: event   
    end

    def music 
        events = Event.where(category: "MUSIC")
        render json: events
    end

    # def  create
    
    # end

    # def destroy 
        
    # end

end
