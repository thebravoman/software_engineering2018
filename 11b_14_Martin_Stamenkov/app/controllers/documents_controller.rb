class DocumentsController < ApplicationController
  	def create
  		Document.create(text:params[:value],name:params[:name],description:params[:description]);
  		redirect_to documents_path;
  	end
  	
  	
  	def list
  		@lists = Document.all;
  		
  	end
  	
  	def last
  		@lists = Document.last(3);
  	end
  	
  	def show
  		@current = Document.find(params[:id]);
  		
  	end
end
