class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise  :database_authenticatable, :registerable,
       		:recoverable, :rememberable, 
		    :validatable, :confirmable,authentication_keys: [:login]


	attr_writer :login

  	def login
    	@login || self.username || self.email
	end

  	def self.find_for_database_authentication(warden_conditions)
	  conditions = warden_conditions.dup
	  if login = conditions.delete(:login)
	    where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
	  elsif conditions.has_key?(:username) || conditions.has_key?(:email)
	    where(conditions.to_h).first
	  end
	end

	validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true		


	after_create :send_admin_mail
	def send_admin_mail
		UserNotifierMailer.send_signup_email(self).deliver
	end


end
