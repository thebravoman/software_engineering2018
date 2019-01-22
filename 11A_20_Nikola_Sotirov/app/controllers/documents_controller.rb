class DocumentsController < ApplicationController
	@@message = ''

	def root
		
	end

	def index
		puts session[:email]

		@msg = @@message
	end

	def new
		
	end

	def show
		puts session[:email] == params[:user]

		if String(session[:email]) != params[:user] or String(session[:password]) != params[:pass]
			if params[:user] != nil and params[:pass] != nil
				@@message = 'You are not permitted to view this document!'
				redirect_to '/documents/'
			end
		end

		@document = Document.find params[:id]
	end

	def create
		if session[:email] == nil
			puts "HERE"
			redirect_to '/users/login/'
			flash[:alert] = 'You do not have an account and therefore will not be permitted to upload a document...'
			return
		end

		file_name = params[:document][:file].original_filename

		content = params[:document][:file].read

		ascii_str = content.unpack("U*").map{|c|c.chr}.join

		doc = Document.create name: file_name, text: ascii_str

		user = User.where(email: session[:email], password: session[:password]).take

		user.documents << doc	

		render 'index'	
	end

	def edit
		
	end

	def document_params
		return params.require(:document).permit(:file)
	end
end
