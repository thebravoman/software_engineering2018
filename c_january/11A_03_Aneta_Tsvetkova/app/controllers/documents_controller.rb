class DocumentsController < ApplicationController

	def index
		@documents = Document.all.order("id desc")
	end

	def show
		@document = Document.find(params[:id])
		pars = request.query_parameters
		user = pars['user']
		if user != nil
			pass = pars['pass']
			dbuser = User.find_by_email(user)
			if dbuser == nil
				@has_access = false
			else
				@has_access = dbuser.valid_password?(pass)
			end
		end
	end

	def new
		@document = Document.new
	end

	def create
		document = Document.new(document_params)
		if document.save
			redirect_to document_path(document)
		else
			redirect_to documents_path
		end
	end

	private
	def document_params
		params.require(:document).permit(:name, :description, :content)
	end

end
