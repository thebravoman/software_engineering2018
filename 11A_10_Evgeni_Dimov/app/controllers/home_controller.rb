class HomeController < ApplicationController
    def index
        @documents = Document.limit(3).order("id desc")
    end
end
