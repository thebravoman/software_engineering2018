class DocumentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :home, :show]

  def new
    @document = Document.new()
  end

  def create
    document = Document.new(document_params)
    if document.save
      redirect_to documents_path
    else
      redirect_to new_document_path
    end
  end

  def index
    @documents = Document.all()
  end

  def show
    @document = Document.find(params[:id])
  end

  def edit
    @document = Document.find(params[:id])
  end

  def update
    document = Document.find(params[:id])
    if document.update(document_params)
      redirect_to documents_path
    else
      redirect_to edit_document_path(document)
    end
  end

  def destroy
    document = Document.find(params[:id])
    document.destroy
    redirect_to documents_path
  end

  def home
    @documents = Document.all
  end
  
private
  def document_params
    params.require(:document).permit(:name, :text, :description)
  end
end
