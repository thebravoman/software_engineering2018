class DocumentsController < ApplicationController
    def index
        @documents = Document.all.order("id desc")
    end

    def show
		@document = Document.find(params[:id])
		login_creds = request.query_parameters
		user = login_creds['user']
        pass = login_creds['pass']
		if user != nil
			user = User.find_by_email(user)
			if user == nil
				@has_permissions = false
			else
				@has_permissions = user.valid_password?(pass)
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
