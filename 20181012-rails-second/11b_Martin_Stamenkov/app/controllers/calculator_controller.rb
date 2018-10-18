class CalculatorController < ApplicationController
  def index

	end

	def new

	end

	def result
		a = Float(params[:a])
		b = Float(params[:b])
		c = Float(params[:c])



		if(a == 0)
			if(b!=0)
				x = (-c/b).round(3);
				if(x == -0.0)
				render plain: x;
				abort();
				else
				render plain: x;
				abort();
				end
		
		
		
			elsif(c!=0)
					render plain:("NaN");
					abort();
		
				else 
					render plain:("*");
					abort();
		
		
			end		
		end

		d = b*b - (4*a*c);	

		if(d == 0)
			x = (-b/(2*a)).round(3);
			if(x == -0.0)
				render plain:(0.0);
				abort();
			else
				render plain: x;
				abort();
			end
		end
		if(d < 0)
			render plain:("NaN");
		
		end
	
		if(d > 0)

			x1 = ((-b + Math.sqrt(d))/ (2 * a)).round(3);
			x2 = ((-b - Math.sqrt(d))/ (2 * a)).round(3);
	
			if(x1 == -0.0)
				x1 = 0.0;
			end
	
			if(x2 == -0.0)
				x2 = 0.0;
			end
	
			if(x1 < x2)
				render plain:("#{x1},#{x2}");

			else
				render plain:("#{x2},#{x1}");
			end
	
		end
	
	end
end
