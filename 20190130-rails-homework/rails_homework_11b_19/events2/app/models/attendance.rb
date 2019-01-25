class Attendance < ApplicationRecord

    belongs_to :person#, foreign_key: "person_id"
    belongs_to :event#, foreign_key: "event_id"

end
