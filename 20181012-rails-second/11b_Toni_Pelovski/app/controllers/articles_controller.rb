
class ArticlesController < ApplicationController
def new
  end
 
  def create
    a = params[:article][:A].to_f	
    b = params[:article][:B].to_f
    c = params[:article][:C].to_f
d = b*b - 4*a*c

if d < 0 
    render plain: "NaN"
elsif a == 0
    if b == 0
        if c == 0
	    render plain: "*"
	else
	    render plain: "NaN"
	    end
    else
	x = -c/b
	if x == -0.0
		x = 0.0
	end
	render plain: "#{x.round(3)}"
        end
else
    x1 = (-b - Math.sqrt(d)) / (2*a)
    x2 = (-b + Math.sqrt(d)) / (2*a)
    if x1 == -0.0
	    x1 = 0.0
    end
    if x2 == -0.0
	    x2 = 0.0
    end
    if x1 != x2
	    if x1 < x2
	    	render plain: "#{x1.round(3)},#{x2.round(3)}"
	    else
		render plain: "#{x2.round(3)},#{x1.round(3)}"
	    end
    else
	    render plain: "#{x1.round(3)}"
	    end
    end
	end
end
