class Event < ApplicationRecord
    has_many :attendances
    has_many :people, through: :attendances
    validates :name, length: {minimum:8}
    validates_presence_of :time, message: "can't be blank"
end
