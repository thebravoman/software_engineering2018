class User < ApplicationRecord
	has_many :documents

	validates :email, presence: true

	validates :password, presence: true
end
