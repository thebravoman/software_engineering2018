class Attendance < ApplicationRecord
  belongs_to :visitor, polymorphic: true
  belongs_to :event
end

