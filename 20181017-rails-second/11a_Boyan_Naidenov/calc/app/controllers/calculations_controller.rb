class CalculationsController < ApplicationController
	def new
    	#render plain: "Hello world"
	end
	def create
		a = params[:a].to_f
		b = params[:b].to_f
		c = params[:c].to_f
		
		d = (b*b) -(4*a*c)

		if b==0 && c==0
			render plain: "0.0"
		end
		if a==0 && b==0 && c==0
			render plain: "*"
		else 
			if d < 0
				render plain: "NaN"					
			elsif d == 0
				x = ((-b)/(2*a))
				if x == -0.0
					x = 0.0
				end
				render plain: "#{x.round(3)}"
			else
				if a==0
					x = (-c/b)
					if x == -0.0
						x = 0.0
					end
					render plain: "#{x.round(3)}"
				else
					x1 = ((-b + Math.sqrt(d))/(2*a))
					x2 = ((-b - Math.sqrt(d))/(2*a))
					if x1 == -0.0
						x1 = 0.0
					end
					if x2 == -0.0
						x2 = 0.0
					end
					if x2 > x1
						render plain: "#{x1.round(3)},#{x2.round(3)}"
					else
						render plain: "#{x2.round(3)},#{x1.round(3)}"	
					end		
				end
			end
		end
	end
end

