class Event < ApplicationRecord
    has_many :eventusers
    has_many :eventactivities
    has_many :activities, through: :eventactivities
    has_many :users, through: :eventusers

    accepts_nested_attributes_for :activities

    def self.most_popular
        my_events = Event.all.sort_by{|event|event.users.count}
        top_events_array = my_events.reverse.first(3)
    end


end
