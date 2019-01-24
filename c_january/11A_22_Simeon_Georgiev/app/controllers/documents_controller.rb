class DocumentsController < ApplicationController

	def index
		@documents = Document.all
	end

	def home
		@documents = Document.all.order("id desc").limit(3).reverse
	end

	def new
		@document = Document.new

	end

	def create
		document = Document.create(document_params)
		redirect_to document_path(document)

	end

	def show
		

		if params[:user] && params[:pass]
			user = User.where(username: params[:user]).first
			
			if(user != nil && user.valid_password?(params[:pass]))
				@message = "Permission granted"
				@document = Document.find(params[:id])
			else 
				@message = "Permission denied"
				@document = Document.new
			end

		else
			@document = Document.find(params[:id])
			

		end
	end

	def document_params
      params.require(:document).permit(:name, :desc, :text)
    end

end
