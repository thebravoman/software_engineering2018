class Event < ApplicationRecord
	has_many :attendances	
	has_many :people, through: :attendances
	

	validates :name, length: {minimum: 8}, presence: true
	validates :location, presence: true
	validate :is_day_valid

	private
	def is_day_valid
		if date.present? && date<Date.today
			errors.add(:date, "invalid date/time")
		end
	end	
end
