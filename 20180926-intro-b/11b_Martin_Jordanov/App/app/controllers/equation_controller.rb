class EquationController < ApplicationController
	# def show
	# 	render 'index'
	# end
	def index
		render 'new'
	end

	def create
		@a = params[:a].to_i
		@b = params[:b].to_i
		@c = params[:c].to_i
		@output = []
		if @a == 0
			@output.push("It's a linear one...")
			render 'show'
			return
		end

		d = @b**2-4*@a*@c

		if d < 0
			@output.push("No real roots...")
			render 'show'
			return
		end

		d = Math.sqrt(d)

		@output.push("X1: #{(-@b-d)/2*@a}")
		@output.push("X2: #{(-@b+d)/2*@a}")


		render 'show'
	end
end
