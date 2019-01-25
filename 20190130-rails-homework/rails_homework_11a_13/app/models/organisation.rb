class Organisation < ApplicationRecord
    has_many :people
    validates :name, presence: true, length: { minimum: 5 }
end
