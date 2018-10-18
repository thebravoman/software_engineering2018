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
  		response = ""
		if(a == 0)
			response = "<p>Linear equation! Use program only for quadratic equations.</p>"
			return response
		end

		discriminant = b * b - 4 * a * c
		if discriminant < 0
			response = "<p>Discriminant #{discriminant} is less than 0. No solution!</p>"
			return response
		end


		x1 = (-b + Math.sqrt(discriminant)) / (2 * a);
		response += "<p>x1: #{x1}</p>"


		x2 = (-b - Math.sqrt(discriminant)) / (2 * a);
		if(x1 != x2)
			response += "<br><p>x2: #{x2}</p>"
		end
		return response;
	end
end
