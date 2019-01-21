class LandingPageController < ApplicationController
  def index
  	@documents = Document.all.reverse.take(3)
  end
end
