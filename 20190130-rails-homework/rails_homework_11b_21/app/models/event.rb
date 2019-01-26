class Event < ApplicationRecord
	validates :name, presence: true, length: {minimum: 8}
	validates :location, presence: true
	
	has_many :attendances
	has_many :people, through: :attendances
end
