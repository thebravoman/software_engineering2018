class Event < ApplicationRecord
  validates :name, presence: true, length: {minimum: 8}
  validates :place, presence: true
  validates :date, presence: true
  validate :date_cannot_be_in_the_past
  def date_cannot_be_in_the_past
     if date.present? && date < Date.today
       errors.add(:date, "can't be in the past")
     end
   end

  has_many :attendances
  has_many :people, through: :attendances
end
