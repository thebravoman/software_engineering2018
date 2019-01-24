class Cat < ApplicationRecord
  validates :name, presence: true, length: {minimum: 4 }
  belongs_to :person
end
