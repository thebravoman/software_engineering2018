class LoginSystemController < ApplicationController
  def register
  	@user = User.new
  end

  def create
  	user = User.new(
  		params.require(:user).permit(:email, :password)
  	)
  	if user.save
  		redirect_to(action: "login", notice: "Register successful")
  	else
  		redirect_to(action: "register", notice: user.errors.full_messages.first)
  	end
  end

  def login
  	@user = User.new
  end

  def login_attempt
  	email = params[:user][:email]
  	password = params[:user][:password]

  	user = User.where(email: email, password: password).first

  	if user
  		session[:current_user_id] = user.id
  		redirect_to("/", notice: "Logged in successfully!")
  	else
  		redirect_to(action: "login", notice: "Login unsuccessful!")
  	end


  end

  def logout
  	session[:current_user_id] = nil
  	redirect_to(action: "login", notice: "Logout succsesfull!")
  end
end
