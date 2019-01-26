class Organization < ApplicationRecord
	validates :name, presence: true
	has_many :people
	has_many :attendances, as: :attendant, dependent: :delete_all
end
