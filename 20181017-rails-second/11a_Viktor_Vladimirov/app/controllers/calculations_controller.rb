class CalculationsController < ApplicationController

        def new
            a = params[:a].to_f
            b = params[:b].to_f
            c = params[:c].to_f
            if a == 0 && b == 0 && c == 0
                @calc = "*"
    
            elsif a == 0
                x = (-c/b).round(3)
                if x == -0.0
                    x = 0.0
                end
                @calc = "#{x}"
                

            else
                d = b*b - 4*a*c
                if d < 0
                    @calc = "NaN"
                    
                    
                elsif d == 0
                    x = (-b/(2*a)).round(3)
                    if x == -0.0
                        x = 0.0
                    end
                    @calc = "#{x}"
                    
                else
                    x1 = ((- b + Math.sqrt(d))/(2*a)).round(3)
                    x2 = ((- b - Math.sqrt(d))/(2*a)).round(3)
                    if x1 == -0.0
                        x1 = 0.0
                    end
                    if x2 == -0.0
                        x2 = 0.0
                    end
                    if x2 > x1
                        x = x1
                        x1 = x2
                        x2 = x
                    end
                    @calc = "#{x1},#{x2}"
                    
                end
        end
        return
    end
end