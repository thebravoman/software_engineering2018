class CalcullationController < ApplicationController
	def new
	end

	def create
		a=params[:a].to_f
		b=params[:b].to_f
		c=params[:c].to_f

		d=b*b-4*a*c


		if a == 0
			if (b==0 and c==0)
				@to_puts = "*"

			elsif d>0
				if c==0
					@to_puts = 0.0
				else
				x=(-c/b).round(3)
				@to_puts = x.to_s
				end
			elsif c!=0
				@to_puts = "NaN"
			end
		else
			if d<0
				@to_puts = "NaN"
			
			elsif d == 0
				x = (-b/(2*a)).round(3)
				if c==0
					@to_puts = 0.0
				else
					@to_puts = x.to_s
				end
			
			else
				x1 = ((-b + Math.sqrt(d))/(2*a)).round(3)
				if x1 == -0.0
					x1 = 0.0
				end

				x2 = ((-b - Math.sqrt(d))/(2*a)).round(3)
				if x2 == -0.0
					x2 = 0.0		
				end	
				
				if x1>x2 
					x1, x2 = x2, x1
				end

				@to_puts = x1.to_s + "," + x2.to_s 
			end
		end
		return 

	end
end
