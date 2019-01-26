class Event < ApplicationRecord
	validates :name, presence: true, length: { minimum: 9 }
	validates :description, presence: true
	
	validate :expiration_date
	has_many :attendances
	has_many :people, through: :attendances

	private
		  def expiration_date
		    if date.present? && date < Date.today
		      errors.add(:date, "can't be in the past")
		    end
		  end
		event = Event.new
		event.valid? # =>false
		event.errors.messages
		# =>{:name =>["is too short"(minimum is 8 characters)]
end


