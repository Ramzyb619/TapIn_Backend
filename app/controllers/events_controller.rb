class EventsController < ApplicationController
    def index
        events = Event.all
        render json: events
    end

    def show
        event = Event.find(params[:id])
            datetime = event.date_time
            formatted_datetime = datetime.strftime("%m/%d/%Y %I:%M%p")
            event_json = event.as_json
            event_json["formatted_datetime"] = formatted_datetime


            if event.user_id.nil?
                render json: event_json
            else
                user = User.find(event.user_id)
                user_name = user.name
                event_json["user_name"] = user_name
                render json: event_json # => event_json = { id: 3, ..., user_name: "Ali" }
            end
    end

    def music 
        events = Event.where(category: "Music")
        render json: events
    end

    def charity_events 
        events = Event.where(category: "Charity and Causes")
        render json: events
    end

    def this_weekend 
        events = Event.where(category: "This Weekend")
        render json: events
    end

    def food
        events = Event.where(category: "Food and Drink")
        render json: events
    end

    def search 
        query = params[:query]
        events = Event.where("category LIKE :query", query: query)
        render json: events
    end

    def  create
        # byebug
    events = Event.create(event_params) 
    user = User.find(events.user_id)
    user_name = user.name
    resp = events.as_json
    resp["user_name"] = user_name
    render json: resp
    end

    def destroy
        event = Event.find(params[:id])
        event.destroy
        render json: event
    end

    private 

def event_params
    params.require(:event).permit(:title, :category, :location, :img_url, :description, :user_id, :date_time)
 end

end
