class CalculationsController < ApplicationController
    def hello
        render plain: "Zdrasti"
    end

    def new
        @equation = ""
        @result = ""
        render "forms"
    end

    def calculate
        a = params[:a].to_f
        b = params[:b].to_f
        c = params[:c].to_f
        @equation = "#{a}*x**2 + #{b}*x + #{c} = 0 \n"

        if a == 0
            if b == 0
                if c == 0
                    @result = "*"
                else
                    @result = "NaN"
                end
            else
                x1 = (-c/b).round(3).to_s
                @result = x1.match(/-0.0/) ? 0.0 : x1
            end
            abort
        end

        d = b*b - 4*a*c
        if d < 0
            @result = "NaN"
        elsif d == 0
            x1 = (-b / (2*a)).round(3).to_s
            @result = x1.match(/-0.0/) ? 0.0 : x1
        else
            x1 = ((-b + Math.sqrt(d))/(2*a)).round(3)
            x2 = ((-b - Math.sqrt(d))/(2*a)).round(3)
            @result = x1 > x2 ? "#{x2},#{x1}" : "#{x1},#{x2}"
        end
        render "forms"
    end
end
