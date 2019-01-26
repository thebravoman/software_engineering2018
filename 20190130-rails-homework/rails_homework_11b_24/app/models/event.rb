class Event < ActiveRecord::Base
	has_many :attendances
	has_many :people, through: :attendances
	
	validates :name, presence: true, length: { minimum: 9 }
	validates :place, presence: true    
    validate :happened_at_is_valid_datetime
	
	private	
  	def happened_at_is_valid_datetime
    	if date.present? && date <= Date.today
    		errors.add(:date, 'Must be a valid datetime!')
    	end
  	end
end
