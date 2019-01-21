class HomeController < ApplicationController
  def index
    @documents = Document.last 3
  end
end

