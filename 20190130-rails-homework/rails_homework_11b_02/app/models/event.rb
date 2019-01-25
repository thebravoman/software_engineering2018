class Event < ApplicationRecord
	validates :name, presence: true, length: {minimum: 8}
	validates :location, presence: true
	validates :date, presence: true
	
	has_many :attendances
	has_many :people, through: :attendances
end
	#https://guides.rubyonrails.org/active_record_validations.html link for validate thing
	#https://stackoverflow.com/questions/1446442/intermediate-model-to-join-two-seperate-models-in-ruby-on-rails link for the attendance thing
