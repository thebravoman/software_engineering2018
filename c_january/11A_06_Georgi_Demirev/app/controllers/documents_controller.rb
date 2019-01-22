class DocumentsController < ApplicationController

	def index
		@documents = Document.all
	end

	def new
		@document = Document.new
	end

	def create
		document = params[:document]
		nameOfFile = document["name"]
		desc = document[:description]
		contentOfFile = document["file"].read
		document = Document.create(name: nameOfFile, text: contentOfFile, description: desc)
		redirect_to document_path(document)
	end

	def show
		if params[:user] && params[:pass]
			user = User.find_for_authentication(:username => params[:user])

			if user != nil and user.valid_password?(params[:pass])
				@alert = params[:user] + " have access to this document!"
			else
				@alert = params[:user] + " don't have access to this document!"
			end
		else
			@document = Document.find(params[:id])
		end
	end
end
