class Event < ApplicationRecord
	has_many :attendances
	has_many :people, through: :attendances
end
