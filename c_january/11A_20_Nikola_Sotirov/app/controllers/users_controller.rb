class UsersController < ApplicationController
	@@message = ''

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
		@message = @@message
	end

	def create
		u = User.create user_params

		if not u.valid?
			u.destroy

			render 'new'

			@@message = 'Please input a valid email and/or password!'

			return
		end

		mail = RegistrationMailer.register u

		mail.deliver_now

		redirect_to '/users/login'
	end

	def user_params
		return params.require(:user).permit(:email, :password)
	end
end
