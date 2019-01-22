class DocumentController < ApplicationController

before_action :set_document, only: [:show, :edit, :update, :destroy]

def index
  if request.path == '/'
      @documents = Document.last(3).reverse
  else
      @documents = Document.all
  end
end

def show
end

def new
  @document = Document.new
end

def edit
end

def create
  @document = Document.new(document_params)
  respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
  end
end

def update
end

def destroy
  @document.destroy
  respond_to do |format|
      format.html { redirect_to documents_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
end

private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:name, :description, :content)
  end
end
