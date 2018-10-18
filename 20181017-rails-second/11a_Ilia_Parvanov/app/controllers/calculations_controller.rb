class CalculationsController < ApplicationController
    def new
        render plain: "Hello, world!"
    end
    def solve



    end
    def solved
        a = Integer(params[:a])
        b = Integer(params[:b])
        c = Integer(params[:c])
        one_x = 0
        if a == 0 && b == 0 && c == 0
            x1 = "*"
            one_x = 1
        elsif a == 0
            x1 = (-c / b).round(3)
            one_x = 1
        else
            d = b*b - 4*a*c

            if (d > 0)
                  x1 = ((-b + Math.sqrt(d)) / (2*a)).round(3)
                  x2 = ((-b - Math.sqrt(d)) / (2*a)).round(3)
                  if x2 < x1
                      temp = x1
                      x1 = x2
                      x2 = temp
                  end
            elsif (d == 0)
                  x1 = (-b / (2*a)).round(3)
                  one_x = 1
            else
                  x1 = "NaN"
                  one_x = 1
            end
        end
        render "solved", :locals => {:x1 => x1, :x2 => x2, :one_x => one_x}
    end
end
