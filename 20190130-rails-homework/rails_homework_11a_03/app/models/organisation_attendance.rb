class OrganisationAttendance < ApplicationRecord
	belongs_to :event
	belongs_to :organisation
end
