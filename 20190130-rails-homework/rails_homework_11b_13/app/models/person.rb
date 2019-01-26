class Person < ApplicationRecord
	validates :name, presence: true
	belongs_to :organization, optional: true
	has_many :attendances, as: :attendant, dependent: :delete_all
end
