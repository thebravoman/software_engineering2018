class Person < ApplicationRecord
	#belongs_to :organization, required: false
	#has_and_belongs_to_many :events
	has_many :attendances
	has_many :events, through: :attendances
end
