class User < ApplicationRecord
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
	validates :password, length: { minimum: 5}
end
