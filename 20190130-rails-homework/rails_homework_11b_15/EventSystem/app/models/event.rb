class Event < ApplicationRecord
    has_many :attendances, dependent: :destroy, foreign_key: "event_id"
    has_many :people, through: :attendances
    validates :name, length: {minimum:8}
    validates_presence_of :time, message: "can't be blank"
end
