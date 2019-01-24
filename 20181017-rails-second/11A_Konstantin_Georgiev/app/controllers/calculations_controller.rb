class CalculationsController < ApplicationController
	def new
	end

	def create
		a = params[:a].to_f
		b = params[:b].to_f
		c = params[:c].to_f
		d = (b*b) - (4*a*c)
		if a == 0 && b == 0 && c == 0
			render plain: "*"
    elsif (a != 0 && b == 0 && c == 0) || (a == 0 && b != 0 && c == 0)
      render plain: "0.0"
    elsif a != 0 && b == 0 && c != 0
      if (-c/a) > 0
        x = Math.sqrt(-c/a)
        render plain: "#{-(x.round(3))},#{x.round(3)}"
      else
        render plain: "NaN"
      end
    elsif a == 0 && b != 0 && c != 0
      x = -c/b
      x = x.round(3);
      render plain: "#{x}"
		elsif (a == 0 && b == 0 && c != 0) || d < 0
			render plain: "NaN"
    else
      if d > 0
        x = (-b + Math.sqrt(d)) / (2*a)
        x = x.round(3)
        if x == -0.0
          x = 0.0
        end
        y = (-b - Math.sqrt(d)) / (2*a)
        y = y.round(3)
        if y == -0.0
          y = 0.0
        end
        if x < y
            render plain: "#{x},#{y}"
        else
            render plain: "#{y},#{x}"
        end
      else
        x = (-b) / (2*a)
        x = x.round(3)
        render plain: "#{x}"
      end
    end
  end
end
