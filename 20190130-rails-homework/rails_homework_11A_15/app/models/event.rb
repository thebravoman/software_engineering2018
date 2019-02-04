class Event < ApplicationRecord
  validates :name, presence: true, length: { minimum: 8 }
  validates :place, presence: true
  validates :time, presence: true
end
