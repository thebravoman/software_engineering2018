class Event < ApplicationRecord
	validates :name, presence: true, length: {minimum: 8 }
	validates :location, presence: true
	validates :description, presence: true
	validates :time, presence: true
	has_and_belongs_to_many :people
	validate :expiration_date_cannot_be_in_the_past

  	def expiration_date_cannot_be_in_the_past
    	if time.present? && time.past?
      		errors.add(:time, "Invalid date")
    	end
  	end    
end
