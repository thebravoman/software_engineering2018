class Attendence < ApplicationRecord
  belongs_to :event_id
  belongs_to :person_id
end
