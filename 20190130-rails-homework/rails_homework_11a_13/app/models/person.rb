class Person < ApplicationRecord
    belongs_to :organisation, optional: true
    has_many :attendances
    has_many :events, through: :attendances
    validates :name, presence: true, length: { minimum: 3 }
end
