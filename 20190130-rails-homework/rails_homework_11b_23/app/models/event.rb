class Event < ApplicationRecord
  has_many :attendences, dependent: :destroy
  has_many :people, through: :attendences
end
