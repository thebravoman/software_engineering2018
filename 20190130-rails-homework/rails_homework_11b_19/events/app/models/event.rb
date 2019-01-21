class Event < ApplicationRecord
    
    validates :name, presence: true, length: {minimum: 4}
    validates :location, presence: true
    #validates :description, presence: true
    #validates :date, presence: true
    validates :date, presence: true#, format: { with: /\A(\d{4})\-(\d{2})\-(\d{2})\s(\d{2})\:(\d{2})\s([aApP][mM])\z/} #overkill
    
    has_many :attendances, dependent: :destroy
    has_many :people, through: :attendances
end
