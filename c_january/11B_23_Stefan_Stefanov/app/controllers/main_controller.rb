class MainController < ApplicationController
	def index
		@docs = Document.all[0...3]
	end
end
