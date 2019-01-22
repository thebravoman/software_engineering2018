class DocumentsController < ApplicationController
  def show
    @document = Document.find(params[:id])
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
    params.require(:document).permit(:title, :text)
  end
end
