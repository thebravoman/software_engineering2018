class UsersController < ApplicationController
	def index

	end

	def login
		u = User.where(user_params).take

		if u == nil
			@message = "Credentials invalid!"
			render 'index'
			return
		else
			@message = "Successfully logged!"
		end

		user = User.find u.id

		session[:email] = user.email
		session[:password] = user.password

		puts session[:email]

		render 'index'
	end

	def new

	end

	def create
		u = User.create user_params

		mail = RegistrationMailer.register u

		mail.deliver_now

		redirect_to '/users/login'
	end

	def user_params
		return params.require(:user).permit(:email, :password)
	end
end
