class ApplicationController < ActionController::Base

    def valid_user params
        !User.where(name: params[:user], pass: params[:pass]).empty?
    end
end
