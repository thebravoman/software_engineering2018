class DocumentsController < ApplicationController
  def new
    @document = Document.new
  end

  def index
    @documents = Document.all

  end

  def create
    document = Document.new(document_params)
    if document.save
      redirect_to document_path(document)
    else
      redirect_to new_document_path
    end
  end

  def show
    @document = Document.find(params[:id])
    @user = params[:user]
    @pass = params[:pass]
  end

  def destroy
    document = Document.find(params[:id])
    document.destroy
    redirect_to documents_path
  end

private

  def document_params
    params.require(:document).permit(:title, :text)
  end
end
