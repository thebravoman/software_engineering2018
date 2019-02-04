class Event < ApplicationRecord
  has_many :attendances, dependent: :destroy
  has_many :people, through: :attendances
  validates :name, presence: true, length: { minimum: 8 }
  validates :location, presence: true
  validate :validate_organized_at

  private
  def validate_organized_at
    if organized_at.present? && organized_at < Date.today
      errors.add(:organized_at, "can't be in the past")
    end
  end
end
