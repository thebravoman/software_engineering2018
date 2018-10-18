class CalculationsController < ApplicationController
	def index

	end

	def new

	end

	def create
		a = params[:a].to_f
		b = params[:b].to_f
		c = params[:c].to_f

		if a == 0
			if b == 0
				if c == 0
					render plain: "*"
					return
				end
				render plain: "NaN"
				return
			end
			@x = - c / b
			if @x == -0.0
				@x = 0.0
			end
			@x = @x.round(3)
			return
		end

		d = b * b - (4 * a * c)

		if d < 0
			render plain: "NaN"

		elsif d == 0
			@x = -b / (2 * a)
			@x = @x.round(3)
			if @x == -0.0
				@x = 0.0 
			end
			return
		else 
			@x1 = (-b + Math.sqrt(d))/(2*a)

			@x2 = (-b - Math.sqrt(d))/(2*a)
			

		
			@x1 = @x1.round(3)
			@x2 = @x2.round(3)	
		
			
			return
		end
	end
end
