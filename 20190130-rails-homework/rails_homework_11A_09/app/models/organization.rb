class Organization < ApplicationRecord
    has_many :people
    has_and_belongs_to_many :events
end
