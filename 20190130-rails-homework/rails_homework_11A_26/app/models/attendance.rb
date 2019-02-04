class Attendance < ApplicationRecord
    belongs_to :event
    belongs_to :person
    belongs_to :organization
end
