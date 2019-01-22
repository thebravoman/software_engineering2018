class DocumentsController < ApplicationController

	def new
		@document = Document.new	
	end
	def edit
		@document = Document.find(params[:id])
	end
	def index
		@documents = Document.last(3)
	end
	def create
		@document = Document.new(doc_params)	
		if @document.save
			flash[:notice] = "Document has been successfully created"
			redirect_to @document
		else
			render 'new'
		end
	end
	def update
		@document = Document.find(params[:id])

		if @document.update(doc_params)
			flash[:notice] = "Updated!"
			redirect_to @document 
		else
			render 'new'
		end
	end
	def destroy
		@document = Document.find(params[:id])
		@document.destroy
		flash[:notice] = "Removed!"
		redirect_to documents_path
	end	
	def show
		@document = Document.find(params[:id])
		if params[:email].blank? && params[:pass].blank?
		elsif user_signed_in?
			if user = User.find_by(email: params[:email])
				if !user.valid_password?(params[:pass])
					flash[:notice] = "The user doesn't have access to this document"
				else
					flash[:notice] = "The user is allowed to access this document"
				end
			else
				flash[:notice] = "A user with such email doesn't exist"
			end
		else
			
			flash[:notice] = "You should log in to access this document"
		end
			
	end
	private

	def doc_params
		params.require(:document).permit(:name, :description, :content)
	end
	
end
