class Organisation < ApplicationRecord
    has_many :people
    has_many :organisation_attendances
    has_many :events, :through => :organisation_attendances  
end
