class WelcomeController < ApplicationController
  def index
    @documents = Document.all.last(3)
  end
end
