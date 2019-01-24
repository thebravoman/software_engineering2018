class Person < ApplicationRecord
  has_many :attendences, dependent: :destroy
  has_many :events, through: :attendences
end
