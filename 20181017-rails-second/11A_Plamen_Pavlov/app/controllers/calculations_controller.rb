class CalculationsController < ApplicationController
	def new
		
	end


	def create
		a = params[:a].to_f
		b = params[:b].to_f
		c = params[:c].to_f

		diskriminanta = (b*b) - (4*a*c)

		if a==0 && b==0 && c==0
			render plain: "*"
			

		elsif a==0 && b==0
			render plain: "NaN"

		elsif a!=0
			if diskriminanta<0
				render plain: "NaN"
			elsif diskriminanta==0
				x = (-b/(2*a)).round(3)
				if x==-0.0
					x=0.0
				end
				render plain: "#{x}"
			elsif diskriminanta>0
				x1 = ((-b+Math.sqrt(diskriminanta))/(2*a)).round(3)
				x2 = ((-b-Math.sqrt(diskriminanta))/(2*a)).round(3)
				if x1==-0.0
					x1=0.0
				elsif x2==-0.0
					x2=0.0
				end
				
				if x1>x2
					flag = x1
					x1 = x2
					x2 = flag
				end
				render plain: "#{x1}, #{x2}"
			end
		elsif a==0
			x = (-c/b).round(3)
			if x==-0.0
				x=0.0
			end
			render plain: "#{x}"
		end
	return
	end
				
end
