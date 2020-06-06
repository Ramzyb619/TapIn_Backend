Rails.application.routes.draw do
  resources :sessions
  resources :user_events
  resources :events
  resources :users
  get "/users/:id/events", to: "users#my_events"
  get "/users/:id/events_attending", to: "users#events_attending"




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
