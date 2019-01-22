class DocumentsController < ApplicationController
  def show
    if params[:user] && params[:pass]
      user = User.find_for_authentication(:email=> params[:user])

        if user != nil and user.valid_password?(params[:pass])
          @alert = params[:user] + " have access"
        else
          @alert = params[:user] + " don't have access"
        end
    else
      @document = Document.find(params[:id])
    end
    #@document = Document.find(params[:id])
  end

  def index
    @documents = Document.all
  end

  def main
    @documents = Document.all
  end

  def new

  end

  def create
    @document = Document.new(document_params)
    @document.save
    redirect_to @document
  end

  def destroy
    @document = Document.find(params[:id])
    @document.destroy
 
    redirect_to documents_path
  end

  private
  def document_params
    params.require(:document).permit(:title, :text, :description)
  end
end
