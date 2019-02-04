class Event < ApplicationRecord
  has_many :tickets
  has_many :people, through: :tickets
end
