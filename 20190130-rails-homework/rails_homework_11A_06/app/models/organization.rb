class Organization < ApplicationRecord
	has_many :attendances
	has_many :people
	has_many :events, through: :attendances
end
