class Event < ApplicationRecord
    has_many :user_events
    has_many :attending_users, through: :user_events, source: :user
    belongs_to :user, optional: true
end
