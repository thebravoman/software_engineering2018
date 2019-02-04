class Event < ApplicationRecord
  has_many :attendances
  has_many :people, through: :attendances
  validates :name, :location, :date, :presence => true
  validates_length_of :name, minimum: 8, allow_blank: true
end
