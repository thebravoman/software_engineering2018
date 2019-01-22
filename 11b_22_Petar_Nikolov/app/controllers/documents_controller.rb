class DocumentsController < ApplicationController
  def index
    @documents = Document.all
  end

  def show
    @document = Document.find params[:id]
    if params[:user] && params[:pass]
      user = User.where("lower(username) = ?", params[:user]).first
      if !user.nil? && user.valid_password?(params[:pass])
        flash[:notice] = "The user '#{user.username}' has access to this document"
      else
        flash[:notice] = "The user '#{params[:user]}' does not have access to this document"
      end
    end
  end

  def new
    @document = Document.new
  end

  def edit
    @document = Document.find params[:id]
  end

  def create
    @document = Document.new document_params
    if @document.save
      flash[:notice] = 'Document created successfully'
      redirect_to @document
    else
      render 'new'
    end
  end

  def update
    @document = Document.find params[:id]
    if @document.update_attributes(document_params)
      flash[:notice] = 'Document updated successfully'
      redirect_to @document
    else
      render 'edit'
    end
  end

  def destroy
    Document.find(params[:id]).destroy
    flash[:notice] = 'Document destroyed successfully'
    redirect_to documents_path
  end

  private

  def document_params
    params.require(:document).permit(:name, :description, :content)
  end
end

