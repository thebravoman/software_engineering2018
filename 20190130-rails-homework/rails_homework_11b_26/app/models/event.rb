class Event < ApplicationRecord
	has_many :attendances, dependent: :destroy
	has_many :people, through: :attendances

	validates :name, length: {minimum: 8}
	validates :location, length: {minimum: 1}

	validate :in_past?

	def in_past?
		if event_date.present? && event_date.past?
			errors.add(:base, "can't be in the past")
		end
	end
end
