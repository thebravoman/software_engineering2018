class Person < ApplicationRecord
	validates :name, presence: true, length: {minimum: 2, maximum: 100}
	has_many :attendances
	has_many :events, :through => :attendances
	belongs_to :organisation, optional: true
end
