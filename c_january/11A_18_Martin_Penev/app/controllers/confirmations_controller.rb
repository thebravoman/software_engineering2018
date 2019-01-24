class ConfirmationsController < Devise::ConfirmationsController
    def new
      super
    end
  
    def create
      super
    end
  
    def show
        self.resource = resource_class.confirm_by_token(params[:confirmation_token])
  
        set_flash_message(:notice, :confirmed) if is_navigational_format?
        sign_in(resource_name, resource)
        redirect_to root_path
    end
  end