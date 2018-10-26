class CalculationsController < ApplicationController

        def new
        end
        def create

           a = params[:a].to_f
           b = params[:b].to_f
           c = params[:c].to_f

           if(a == 0)
           	if(b == 0 && c == 0)
           		render plain: "*"
           	elsif(b == 0 && c != 0)
           		render plain: "NaN"
           	else
           		x = -c/b
           		if(x == -0.0)
           					x = 0.0
           		end
           	render plain: "#{x.round(3)}"
           	end

           end

          d = params[:b].to_f * params[:b].to_f - 4 * params[:a].to_f * params[:c].to_f

           if(d < 0)
            render plain:"NaN"
           end

           if(d == 0)
           	x1 = -b/(2*a)
           	if(x1 == -0.0)
           		x1 = 0.0
           	end
           	return "#{x1.round(3)}"
           elsif(d > 0)
           	x1 = (-b + Math.sqrt(d))/(2*a)
           	x2 = (-b - Math.sqrt(d))/(2*a)
           	if(x1 < x2)
           		render plain: "#{x1.round(3)},#{x2.round(3)}"
           	end
           	if(x2 < x1)
           		render plain: "#{x2.round(3)},#{x1.round(3)}"
           	end
           end
        end
end
