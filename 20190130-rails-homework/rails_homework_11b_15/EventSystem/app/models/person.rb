class Person < ApplicationRecord
    has_many :attendances, dependent: :destroy, foreign_key: "person_id"
    has_many :events, through: :attendances
    validates_presence_of :name, message: "can't be blank"
end
