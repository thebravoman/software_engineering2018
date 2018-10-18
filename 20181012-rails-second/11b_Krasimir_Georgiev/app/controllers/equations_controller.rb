class EquationsController < ApplicationController

	def new

 	end


  	def create
  		@equation = Equation.new(params[:equation].permit(:a, :b, :c))
  		@equation.save()

  		redirect_to action: "display", id: @equation.id
  	end


  	def display
  		@equation = Equation.find(params[:id])
  		@response = equation_solver(@equation.a, @equation.b, @equation.c)
  		@id = @equation.id
  	end


  	def delete
  		@equation = Equation.find(params[:id])
  		@equation.destroy()

  		redirect_to action: "new"
  	end	


  	private
  	def equation_solver(a, b, c)
		if a == 0
			if b == 0
				if c == 0
					return "*"
				else
					return "NaN"
				end
			else
				x = (-c/b).round(3)
				return "#{x}"
			end
		end

		discriminant = b * b - 4 * a * c
		if discriminant < 0
			return "NaN"
		end


		x1 = ((-b + Math.sqrt(discriminant)) / (2 * a)).round(3);
		x2 = ((-b - Math.sqrt(discriminant)) / (2 * a)).round(3);

		if x1 == x2
			if x1 == -0.0
				x1 = 0.0
			end
			
			return "#{x1}"
		elsif x1 > x2
			return "#{x2},#{x1}"
		else
			return "#{x1},#{x2}"
		end
	end
end
