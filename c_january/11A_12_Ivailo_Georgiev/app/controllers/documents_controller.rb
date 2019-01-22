class DocumentsController < ApplicationController
	def index
		@documents = Document.all
	end

	def startpage
		@document = Document.all.order("id desc").limit(3)
	end

	def show
		@document = Document.find(params[:id])
	end

	def new
		@document = Document.new
	end

	def create
		doc = Document.create(doc_params)
		redirect_to document_path(doc)
	end

	def doc_params
		params.require(:document).permit(:name, :desc, :text)
	end

end
