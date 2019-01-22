class ApplicationController < ActionController::Base
	layout 'application'
	helper_method :logged_in?

	def logged_in?
		return session[:current_user_id] != nil
	end
end
