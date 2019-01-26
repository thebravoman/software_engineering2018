class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :attendant, polymorphic: true
end
