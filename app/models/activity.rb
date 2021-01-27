class Activity < ApplicationRecord
    has_many :eventactivities
    has_many :events, through: :eventactivities
end
