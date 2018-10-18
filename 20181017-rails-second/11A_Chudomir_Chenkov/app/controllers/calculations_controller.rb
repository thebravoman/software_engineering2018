class CalculationsController < ApplicationController

	def new
	end

	def create
		a = params[:a].to_f
		b = params[:b].to_f
		c = params[:c].to_f

		if a == 0
			if b == 0
				if c == 0
					render plain: "*"
				else
					render plain: "NaN"
				end
			else
				x = -c/b
				if x == 0
					x = 0.0
				end
				x = x.round(3)
				render plain: "#{x}"
			end

		else

			d = b*b - 4*a*c

			if d < 0
				render plain: "NaN"

			elsif d == 0
				x = (-b) / (2*a)
				if x == 0
					x = 0.0
				end
				x = x.round(3)
				render plain: "#{x}"

			else

				x1 = (-b + Math.sqrt(d)) / (2*a)
				x2 = (-b - Math.sqrt(d)) / (2*a)

				if x1 == 0
					x1 = 0.0
				end

				if x2 == -0.0
					x2 = 0.0
				end

				x1 = x1.round(3)
				x2 = x2.round(3)

				if x2 > x1
					render plain: "#{x1},#{x2}"
				elsif x2 < x1
					render plain: "#{x2},#{x1}"
				end

			end

		end

	end

end
