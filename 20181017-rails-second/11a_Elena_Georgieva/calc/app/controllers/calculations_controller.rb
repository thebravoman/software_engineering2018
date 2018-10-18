class CalculationsController < ApplicationController
	def new
		#render plain: "Hello world"
	end
	def create
		a=params[:a].to_f;
		b=params[:b].to_f;
		c=params[:c].to_f;
		#render plain:"#{x1},#{x2}"
		d=b*b-4*a*c 
		if a==0
			if b==0 
				if c==0
					render plain: "*"
				elsif c!=0
					render plain: "NaN"
				end
			else
				x=-c/b	
				x=x.round(3)
				if x == -0.0
					render plain: "0.0"
				else
					render plain: "#{x}"
				end
			end


		else
			if d<0
				render plain: "NaN"

			elsif d == 0
				x=(-b)/(2*a)
				x=x.round(3)
				if x == -0.0
					render plain: "0.0"
				else
					render plain: "#{x}"
				end

			else
				
				x1=(-b+Math.sqrt(d))/(2*a)
				x2=(-b-Math.sqrt(d))/(2*a)
				if x1==-0.0
					x1=0.0
				elsif x2==-0.0
					x2=0.0
				end
				x1=x1.round(3)
				x2=x2.round(3)
				if x2 > x1
					render plain: "#{x1},#{x2}"
				elsif x1>x2
					render plain: "#{x2},#{x1}"
				end
			end
		end
	end
end
