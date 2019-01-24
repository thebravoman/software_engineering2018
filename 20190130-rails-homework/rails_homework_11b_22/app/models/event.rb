class Event < ApplicationRecord
  has_many :attendances
  has_many :people, -> { distinct }, through: :attendances,
           source: :visitor, source_type: 'Person' 
  has_many :organizations, -> { distinct }, through: :attendances,
           source: :visitor, source_type: 'Organization' 

  validates :name, presence: true, length: { minimum: 8 }
  validates :location, presence: true
  validates :date, valid_datetime: true
end

