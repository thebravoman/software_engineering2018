class Event < ApplicationRecord
	validates :name, presence: true
	validates_length_of :name, minimum: 8
	validates :place, presence: true
	validates :data, presence: true
	validates_datetime :data, date: true
  
	has_many :attendances
	has_many :people, through: :attendances
	has_many :organizations, through: :attendances
end
