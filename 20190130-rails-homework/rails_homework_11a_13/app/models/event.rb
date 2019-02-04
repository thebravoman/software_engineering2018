class Event < ApplicationRecord
    validates :name, presence: true, length: { minimum: 6 }
    validates :location, presence: true
    validates :date, presence: true
    has_many :attendances
    has_many :organisation_attendances
    has_many :people, through: :attendances
    has_many :organisations, through: :organisation_attendances

end
