class Person < ApplicationRecord
    has_many :attendances
    has_many :events, through: :attendances
    
    belongs_to :organization, optional: true
    
    validates :name, presence: true

end
