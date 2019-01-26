class Person < ApplicationRecord
	has_many :attendances	
	has_many :events, through: :attendances
	
	validates :name, presence:true
end
