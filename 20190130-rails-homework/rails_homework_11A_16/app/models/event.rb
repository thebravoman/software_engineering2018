class Event < ApplicationRecord
    has_many :attendances
    has_many :people, through: :attendances, dependent: :destroy

    validates :name, presence: true, length: {minimum: 8}
    validates :location, presence: true
    validates :time, presence: true
    validate :date_is_in_the_future

    def date_is_in_the_future
        if time <= Date.today
            errors.add(:time, "can't be in the past")
        end
    end
end
