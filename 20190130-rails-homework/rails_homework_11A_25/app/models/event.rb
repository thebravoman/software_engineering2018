class Event < ApplicationRecord
	belongs_to :people
	validates :name, presence: true, length: {minimum: 8}
	validates :place, presence: true
end
