class CalculationsController < ApplicationController

  def new
    @equation = ""
    @result = ""
    render "forms"
  end

  def calculate

    a = params[:a].to_f
    b = params[:b].to_f
    c = params[:c].to_f

    @equation = "[#{a}*x**2 + #{b}*x +#{c} = 0 \n]"
    if a == 0
      if b == 0
        @result =  "NaN"
        if c == 0
          @result = "*"
        end
      end
        x = (-c/b).round(3)
        if x == -0.0
          x = 0.0
        end
        @result = "#{x}"
    end

      d = b*b - 4*a*c

      if d < 0
        @result = "NaN"
      end
      if d == 0
          x = (-b/(2*a)).round(3)
          if x == -0.0
            x = 0.0
          end
          @result = "#{x}"
      end

    if d > 0
      x1 = ((-b - Math.sqrt(b*b - 4*a*c))/(2*a)).round(3)
      x2 = ((-b + Math.sqrt(b*b - 4*a*c))/(2*a)).round(3)

      if x1 == -0.0
        x1 = 0.0
      end
      if x2 == -0.0
        x2 = 0.0
      end
      if(x1 < x2)
        @result = "#{x1},#{x2}"
      else
        @result =  "#{x2},#{x1}"
      end
    end
    render "forms"
  end
end
