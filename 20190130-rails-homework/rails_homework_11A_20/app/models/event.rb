class Event < ApplicationRecord
	#has_and_belongs_to_many :people
	has_many :attendances
	has_many :people, through: :attendances

	validates :name, presence: true, length: {minimum: 8}
	validates :location, presence: true
	validates :date, presence: true
end
