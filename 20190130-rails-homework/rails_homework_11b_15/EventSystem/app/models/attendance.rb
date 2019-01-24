class Attendance < ApplicationRecord
  belongs_to :event
  belongs_to :subscriber, polymorphic: true
end
