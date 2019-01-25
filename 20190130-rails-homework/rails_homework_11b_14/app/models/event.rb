class Event < ApplicationRecord
	validates :name, presence: true, length: {minimum: 8 }
	validates :location, presence: true
	validates :description, presence: true
	validates :time, presence: true
	has_and_belongs_to_many :people
	validates :time, :timeliness => {:on_or_before => lambda { Date.current }, :type => :date}
end
