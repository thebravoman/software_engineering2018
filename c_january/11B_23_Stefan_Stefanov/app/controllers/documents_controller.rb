class DocumentsController < ApplicationController
	def index
		@docs = Document.all
	end

	def new
		@file = Document.new
	end

	def create

		file_name = params[:document][:content].original_filename
		content = params[:document][:content].read
		doc = Document.new({"content": content, "filename": file_name})
		doc.save
		redirect_to document_path(doc)
	end

	def show
		@doc = Document.find(params[:id])
	end

	def destroy
    	doc = Document.find(params[:id])
    	doc.destroy
    	redirect_to documents_path
  	end

end
