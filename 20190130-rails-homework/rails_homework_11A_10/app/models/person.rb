class Person < ApplicationRecord
    validates :name, presence: true
	has_many :attendances
	has_many :events, :through => :attendances
	belongs_to :organisation, optional: true
end
