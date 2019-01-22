class HomeController < ApplicationController
	def index
		@documents = Document.all.order("id desc").limit(3).reverse
	end
end
