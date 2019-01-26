class Event < ApplicationRecord
	has_many :attendances, dependent: :destroy
	has_many :people, through: :attendances
	
	validates :name, length: { minimum: 9 }, presence: true
	validates :location, presence: true
	
	validate :validate_date
	
	private
	def validate_date
		if date.present? && date < Date.today
		  errors.add(:date, "can't be in the past")
		end
	end
end
