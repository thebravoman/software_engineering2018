class Event < ActiveRecord::Base
  has_many :attendances
  has_many :people, through: :attendances

  validates :name, presence: true, length: {minimum: 9}
  validates :place, presence: true
  validates :date, presence: true


end
