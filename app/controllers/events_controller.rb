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
        events = Event.where(category: "Music")
        render json: events
    end

    def charity_events 
        events = Event.where(category: "Charity and Causes")
        render json: events
    end

    def search 
        query = params[:query]
        events = Event.where("category LIKE :query", query: query)
        render json: events
    end

    # def  create
    
    # end

    # def destroy 
        
    # end

end
