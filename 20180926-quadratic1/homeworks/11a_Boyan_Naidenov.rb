a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

d = (b*b) -(4*a*c)
def solution(a, b, c, d)
	if b==0 && c==0
		puts "0.0"
		return
	end
	if a==0 && b==0 && c==0
		puts "*"
	else 
		if d < 0
			puts "NaN"		
			
		elsif d == 0
			x = ((-b)/(2*a))
			if x == -0.0
				x = 0.0
			end
			puts "#{x.round(3)}"
		else
			if a==0
				x = (-c/b)
				if x == -0.0
					x = 0.0
				end
				puts "#{x.round(3)}"
					return
			else
				x1 = ((-b + Math.sqrt(d))/(2*a))
				x2 = ((-b - Math.sqrt(d))/(2*a))
				if x1 == -0.0
					x1 = 0.0
				end
				if x2 == -0.0
					x2 = 0.0
				end
				if x2 > x1
					puts "#{x1.round(3)},#{x2.round(3)}"
				else
					puts "#{x2.round(3)},#{x1.round(3)}"				
				end
			
				return
			end
		end
	end
end
solution(a, b, c, d)
