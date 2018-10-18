class CalculationsController < ApplicationController

        def new        
        end
        
        def create
        	a = params[:a].to_f
        	b = params[:b].to_f
        	c = params[:c].to_f
        	if a == 0.0 and b == 0.0 and c == 0.0
        		render plain: "*"
			else
				discriminant = b*b - 4*a*c
				if a == 0
					var = -c/b
					if var == -0.0
						render plain: 0.0
					elsif b == 0
						render plain: "NaN"
					elsif c == 0
						render plain: 0.0
					else
						render plain: "#{var.round(3)}"
					end 	
				else
					if discriminant < 0
						render plain: "NaN"
					elsif discriminant == 0
						x = -b/(2*a)
						if x == -0.0
							render plain: 0.0
						else
							render plain: "#{x.round(3)}"
						end 
					else
						x1 = ((-b + Math.sqrt(discriminant))/(2*a)).round(3)
						x2 = ((-b - Math.sqrt(discriminant))/(2*a)).round(3)
						if x1 == -0.0
							x1 = 0.0
						elsif x2 == -0.0
							x2 = 0.0
						end
						if x1 > x2
							render plain: "#{x2},#{x1}"
						elsif x1 < x2
							render plain: "#{x1},#{x2}"
						end
					end
				end
			end
        end

end
