class DocumentsController < ApplicationController
	before_action :authenticate_user!
	def list
    		@user = current_user.email
		@documents = Document.first(3)
  	end
	def index
		@documents = Document.all
	end
	def new
		@document = Document.new
	end
	def create
		@document= Document.new(document_params)
		if @document.save
			redirect_to "/documents"
		else
			render "new"
		end	
	end
	def show
		@document = Document.find(params[:id])
		@file_content = File.read("#{Rails.root}/public"+@document.attachment.to_s)
		
	end
	def destroy
	    document = Document.find(params[:id])
	    document.destroy
	    redirect_to documents_path
	end
	private
		def document_params
     			params.require(:document).permit(:name, :discription, :attachment)
   		end
		
	
end
