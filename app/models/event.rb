class Event < ApplicationRecord
    has_many :eventusers
    has_many :activities
    has_many :users, through: :eventusers
end
