a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

D = b*b - 4*a*c

x1 = (-b + Math.sqrt(b*b - 4*a*c))/2*a
x2 = (-b - Math.sqrt(b*b - 4*a*c))/2*a
	
	if(a == 0)
		x = -c/b
		puts "X: #{x}"
	else
		if(D < 0)
			puts "No roots :("
		else
			if(D == 0)
				puts "X = #{x1}"
			else 
				puts "X1: #{x1}"
				puts "X2: #{x2}"
			end
		end
	end

