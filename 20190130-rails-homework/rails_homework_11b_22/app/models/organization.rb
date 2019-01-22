class Organization < ApplicationRecord
  has_many :people
  has_many :attendances, as: :visitor
  has_many :events, through: :attendances

  validates :name, presence: true
end

