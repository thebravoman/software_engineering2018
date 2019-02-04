class Attendance < ApplicationRecord
	belongs_to :event
	belongs_to :person, optional: true
	belongs_to :organization, optional: true
end
