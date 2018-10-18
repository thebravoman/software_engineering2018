class EquationController < ApplicationController

    def new
    
    end
    
    def create
        #render plain: params[:equation].inspect
        equation = params[:equation]
        @a = equation[:a].to_f
        @b = equation[:b].to_f
        @c = equation[:c].to_f
        #@output = solve_equation(@a, @b, @c)
        @output = []
        if @a == 0
            if @b == 0
                if @c == 0
                    @output.push("*")
                else
                    @output.push("NaN")
                end
            else
                x = (-c/b).round(3)
                if x == -0.0
                    x = 0.0
                end
                @output.push(x)
            end
        else
            #puts "#{@a}, #{@b}, #{@c}\n" * 100
            determinant = @b * @b - 4 * @a * @c
            if determinant < 0
                @output.push("NaN")
            elsif determinant == 0
                x1 = (-@b / (2 * @a)).round(3)
                if x1 == -0.0
                    x1 = 0.0
                end
                @output.push(x1)
            else
                x1 = ((-@b + Math.sqrt(determinant)) / (2 * @a)).round(3)
                x2 = ((-@b - Math.sqrt(determinant)) / (2 * @a)).round(3)
                @output.push(x1)
                @output.push(x2)
            end
        end
        render 'result'
    end

    

end
