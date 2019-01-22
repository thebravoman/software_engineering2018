class ApplicationController < ActionController::Base
      @documents = Document.all
end
