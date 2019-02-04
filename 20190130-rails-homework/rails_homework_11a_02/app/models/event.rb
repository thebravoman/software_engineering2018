class Event < ApplicationRecord
  validates :name, presence: true
  validates_length_of :name, minimum: 8
  validates :place, presence: true
end
