class CalculationsController < ApplicationController
	def index

	end
	def new
		
	end

	def create 
		def quadratic_eq a, b, c
			  discriminant = b**2 - (4 * a * c) 

			  if discriminant < 0
				  render plain: "NaN"
			  elsif a==0 && b==0 && c==0
				render plain: "*"
			  elsif (a==0 && c==0) || (b==0 && c==0)
				render plain: "0.0"
			  elsif discriminant == 0
					 render plain: "#{(-b/(2 * a)).round(3)}"
			  elsif a==0
				render plain: "#{(-c/b).round(3)}"
			  else 
					x1 = ((-b + Math.sqrt(discriminant))/(2 * a)).round(3)
					x2 = ((-b - Math.sqrt(discriminant))/(2 * a)).round(3)

					if x1>x2
					render plain: "#{x2},#{x1}"
	
				else
					render plain: "#{x1},#{x2}"
				end
		   end
	
	end
	quadratic_eq(params[:a].to_f, params[:b].to_f, params[:c].to_f)


		
end
end
