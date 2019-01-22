class DocumentsController < ApplicationController
    
    def destroy
        document = Document.find(params[:id])
        document.destroy
        redirect_to "/"
    end
    def new
	@document = Document.new
    end

    def create
	document = Document.new(params.require(:document).permit(:content, :name, :subscription, :desc))
        document.save
	redirect_to "/"
    end

    def index
      if (request.url == "http://localhost:3000" || request.url == "http://localhost:3000/")
         @documents = Document.last(3)
      end
      if (request.url == "http://localhost:3000/documents" || request.url == "http://localhost:3000/documents/")
         @documents = Document.all
      end
    end
   
    def show
	@document = Document.find(params[:id])
	if @document.subscription == true
	    if !user_signed_in?
		render plain: "Not authorized!!!"
	    end
	end
    end
    
end
