class Person < ApplicationRecord
	has_many :events, dependent: :destroy
end
