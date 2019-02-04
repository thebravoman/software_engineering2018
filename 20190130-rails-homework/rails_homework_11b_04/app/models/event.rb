class Event < ApplicationRecord
	has_many :attendances, dependent: :destroy
	has_many :people, through: :attendances
	validates :name, presence: true, length: { minimum: 8 }, on: :create
	validates :name, presence: true, length: { minimum: 8 }, on: :update
	validates :location, presence: true, on: :create
	validates :location, presence: true, on: :update
end
