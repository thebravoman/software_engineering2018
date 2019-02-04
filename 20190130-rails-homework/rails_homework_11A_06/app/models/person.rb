class Person < ApplicationRecord
	has_many :attendances
	belongs_to :organization, optional: true
	has_many :events, through: :attendances
end
