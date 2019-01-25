class Event < ApplicationRecord

	validates :title, length: {minimum: 8}, presence: true

	validates :location, presence: true

	validate :expiration_date_cannot_be_in_the_past

  	def expiration_date_cannot_be_in_the_past
  		if(! date.presence)
  			errors.add(:date, "is empty")
  		end
    	if date.present? && date.past?
      		errors.add(:date, "can't be in the past")
    	end
  	end    


end
