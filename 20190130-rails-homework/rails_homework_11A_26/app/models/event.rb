class Event < ApplicationRecord
    validates :name, presence: true, length: {minimum: 8}
    validates :location, presence: true
    validates :date, presence: true

    has_many :attendances
    has_many :people, through: :attendances
    has_many :organizations, through: :attendances
end
