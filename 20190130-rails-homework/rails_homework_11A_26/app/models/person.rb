class Person < ApplicationRecord
    belongs_to :organization, optional: true
    has_many :attendances
    has_many :events, through: :attendances
end
