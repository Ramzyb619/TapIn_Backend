class User < ApplicationRecord
    has_many :user_events
    has_many :events_attending, through: :user_events, source: :event
    has_many :events
end
