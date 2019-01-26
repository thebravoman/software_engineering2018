class Event < ApplicationRecord
  has_many :attendances
  has_many :people, through: :attendances
  validates :name, presence: true, length: {minimum: 8 }
  validates :date, presence: true
  validates :location, presence: true
  validates :desc, presence: true
end
