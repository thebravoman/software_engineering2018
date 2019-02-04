class Person < ApplicationRecord
	has_many :attendances, dependent: :destroy
	has_many :events, through: :attendances
end
