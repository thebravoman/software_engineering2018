class DocumentsController < ApplicationController

    def index
        @docs=Document.last(3).reverse
    end
    
    def new
        @document=Document.new
    end

    def show
        @document=Document.find(params[:id])
    end

    def edit
        @document=Document.find(params[:id])
    end

    def create
        document=Document.new(doc_params)
        if document.save
            redirect_to document_path(document)
        else
            redirect_to new_document_path
        end
    end

    def update
        document=Document.find(params[:id])
        if document.update(doc_params)
            redirect_to document_path(document)
        else
            redirect_to edit_document_path(document)
        end
    end

    def destroy
        document=Document.find(params[:id])
        document.destroy
        redirect_to documents_path
    end

    private

    def doc_params
        params.require(:document).permit(:name, :text)
    end

end
