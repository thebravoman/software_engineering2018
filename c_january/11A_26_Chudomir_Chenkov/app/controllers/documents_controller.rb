class DocumentsController < ApplicationController

  def new
    @document = Document.new
  end

  def create
    document = Document.new(document_params)

    if document.save
      redirect_to document_path(document)
    else
      redirect_to new_document_path
    end

  end

  def update
    document = Document.find(params[:id])

    if document.update(document_params)
      redirect_to document_path(document)
    else
      redirect_to new_document_path
    end
  end

  def edit
    @document = Document.find(params[:id])
  end

  def destroy
    document = Document.find(params[:id])
    document.destroy
    redirect_to documents_path
  end

  def index
    @documents = Document.all
  end

  def show
    @user = User.find(params[:id])
    #redirect_to new_user_session_path unless @user == current_user

    if @user != current_user
      flash[:alert] = 'You do not have permission to this page! Please sign in.'

      respond_to do |format|
        format.html
      end

      redirect_to new_user_session_path
    end

    @document = Document.find(params[:id])
  end

private

  def document_params
    params.require(:document).permit(:name, :description, :content)
  end

end
