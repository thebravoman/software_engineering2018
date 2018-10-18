class CalcController < ApplicationController
	def index

	end

	def output

		a = params[:a].to_f
		b = params[:b].to_f
		c = params[:c].to_f


		if a == 0 && b == 0 && c == 0

			@q = "*"
			
		elsif a == 0 and b!=0

		    x = (-c/b).round(3)
		   
		    if x == -0.0
		        @q = "0.0"
		       else
		        @q = "#{x}"
		      end
		   
		else
		   
		    dis = b*b - 4*a*c
		   
		    if dis<0 or (a==0 and b==0)
		       
		        @q = "NaN"
		 
		    elsif dis == 0 && a!=0
		   
		        x = ((-b) / 2*a).round(3)
		       if x == -0.0
		        @q = "0.0"
		       else
		        @q = "#{x}"
		      end
		      
		    else
		 
		        x1 = (-b + Math.sqrt(dis)) / (2*a)
		        x2 = (-b - Math.sqrt(dis)) / (2*a)
		 		
		 		if x1 < x2

		        	@q = "#{x1.round(3)},#{x2.round(3)}"
		   		
		   		else

		   			@q = "#{x2.round(3)},#{x1.round(3)}"

		   		end	
		    end
		end
		return
	end
end
