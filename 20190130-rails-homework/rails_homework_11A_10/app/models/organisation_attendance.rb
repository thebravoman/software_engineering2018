class OrganisationAttendance < ApplicationRecord
    has_one :event
    has_one :organisation
end
