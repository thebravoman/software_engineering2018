class Organisation < ApplicationRecord
	has_many :organisation_attendances
	has_many :events, :through => :organisation_attendances
	has_many :people
end
