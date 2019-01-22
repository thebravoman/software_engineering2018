class DocumentsController < ApplicationController
  	def create
  		Document.create(text:params[:value],name:params[:name],description:params[:description]);
  		redirect_to documents_path;
  	end
  	
  	
  	def list
  		@lists = Document.all;
  		
  	end
  	
  	def last
  		@first = Document.last;
  		id = @first.id;
  		@second = Document.find(id-1);
  		@third = Document.find(id-2);
  	end
  	
  	def show
  		@current = Document.find(params[:id]);
  		
  	end
end
