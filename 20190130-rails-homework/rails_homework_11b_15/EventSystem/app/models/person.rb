class Person < ApplicationRecord
    belongs_to :organization
    has_many :attendances, as: :subscriber
    has_many :events, through: :attendances
    validates_presence_of :name, message: "can't be blank"
end
