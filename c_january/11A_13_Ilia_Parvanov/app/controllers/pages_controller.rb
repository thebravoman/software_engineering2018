class PagesController < ApplicationController
  def home
    @documents = Document.all.last(3)
  end
end
