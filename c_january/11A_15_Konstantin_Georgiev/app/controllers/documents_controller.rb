class DocumentsController < ApplicationController
  def index
      @documents = Document.all
   end
   def show
    @document = Document.find(params[:id])
  end
   def new
     @documents = Document.all
      @document = Document.new
   end

   def create
     @documents = Document.all
      @document = Document.new(document_params)

      if @document.save
         redirect_to documents_path, notice: "The document #{@document.name} has been uploaded."
      else
         render "new"
      end

   end

   def destroy
     @documents = Document.all
      @document = Document.find(params[:id])
      @document.destroy
      redirect_to documents_path, notice:  "The document #{@document.name} has been deleted."
   end

   private
      def document_params
      params.require(:document).permit(:name, :attachment)
   end

end
