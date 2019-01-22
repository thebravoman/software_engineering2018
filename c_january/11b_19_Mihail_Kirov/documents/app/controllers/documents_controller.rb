class DocumentsController < ApplicationController

    def index
        @documents = Document.all
    end

    def new
        @document = Document.new
    end
    
    def lastthree
        @documents = Document.last(3)
        render "index"
    end


    def create
        @document = Document.new(document_params)
        if @document.save
          flash[:success] = "Document successfully created"
          redirect_to documents_path(@document)
        else
          flash[:error] = "Something went wrong"
          redirect_to new_document_path
        end
    end
    
    def show
        @document = Document.find(params[:id])
        if user_signed_in?
            user = User.find_by(email: params[:email].to_s)
            if !user.nil?
                if user.valid_password?(params[:pass].to_s)
                    flash[:notice] = "You have access to this document"
                    #redirect_to documents_path(@document)
                else
                    #render plain: "You have no access to this document"
                    flash[:notice] = "You have no access to this document"
                end
            else
                flash[:notice] = "There is no user with this email"
            end
        else
            flash[:notice] = "You are not logged in"
        end
        
        
    end
    
    def document_params
        params.require(:document).permit(:name, :description, :text)
    end

end
