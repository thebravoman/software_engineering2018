class LoginController < ApplicationController

	def logIn
		if params[:user] == "Neko" && params[:pass] == "1337"
			puts "User logged in!"
			redirect_to documents_url
		end
	end


end
