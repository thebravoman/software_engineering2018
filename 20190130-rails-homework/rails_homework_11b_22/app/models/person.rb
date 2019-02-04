class Person < ApplicationRecord
  belongs_to :organization, optional: true
  has_many :attendances, as: :visitor
  has_many :events, through: :attendances

  validates :name, presence: true
end

