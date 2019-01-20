class Event < ApplicationRecord
    validates :name, :length => { :minimum => 8 }
    validates :location, presence: true
    validates :hour, numericality: { greater_than_or_equal_to: 0,  less_than_or_equal_to: 24 }
        
       
    
end
