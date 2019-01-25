class Attendance < ApplicationRecord
  belongs_to :username
  belongs_to :event
end
