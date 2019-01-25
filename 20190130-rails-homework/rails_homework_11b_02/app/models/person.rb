class Person < ApplicationRecord
	validates :name, presence: true, length: {minimum: 5}
	has_many :attendances
	has_many :events, through: :attendances
end
