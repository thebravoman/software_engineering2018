class DocumentsController < ApplicationController
	def new
	end
	def create
		@document = Document.new(document_params)
		@document.save
  		redirect_to @document	
	end

	def index
		@documents = Document.all
	end 

	def show
		if params[:user] && params[:pass]
			@user = User.where(username: params[:user]).first
			if @user != nil && user.valid_password?(params[:pass])
				@document = Document.find(params[:id])
			else 
				flash[:alert] = "You don't have permission"
			end

		else
			@document = Document.find(params[:id])
			
		end
	end

	def destroy
	    @document = Document.find(params[:id])
	    @document.destroy
	    redirect_to documents_path
  	end
	private
	  def document_params
	    params.require(:document).permit(:title, :about, :text)
	  end
end
