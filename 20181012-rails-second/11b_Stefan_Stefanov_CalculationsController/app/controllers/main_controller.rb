class MainController < ApplicationController
	def new
		a = Time.now.strftime("%d/%m/%Y %H:%M")
		b = "Number in class: 23"
		render plain: "#{a}\n#{b}"
	end
end
