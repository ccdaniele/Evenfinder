class Event < ApplicationRecord
    has_many :eventusers
    has_many :eventactivities
    has_many :activities, through: :eventactivities
    has_many :users, through: :eventusers

    accepts_nested_attributes_for :activities


end
