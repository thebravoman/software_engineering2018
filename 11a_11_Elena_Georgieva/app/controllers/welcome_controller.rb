class WelcomeController < ApplicationController
  def index
  	@documents = Document.order(id: :desc).limit(3)
  end

end
