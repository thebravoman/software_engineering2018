class ApplicationController < ActionController::Base

    def valid_user params
        !User.where(name: params[:user], pass: params[:pass], confirmed: true).empty?
    end
end
