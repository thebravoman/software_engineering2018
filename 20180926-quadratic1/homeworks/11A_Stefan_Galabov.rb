a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0 && b == 0 && c == 0
	puts "*"
else
	discriminant = b*b - 4*a*c
	if a == 0
		var = -c/b
		if b == 0
			puts "NaN"
		elsif c == 0
			puts "0.0"
		else
			puts "#{var.round(3)}"
		end 	
	else
		if discriminant < 0
			puts "NaN"
		elsif discriminant == 0
			x = -b/(2*a)
			if x == -0
				puts "#{(x*(-1)).round(3)}"
			else
				puts "#{x.round(3)}"
			end 
		else
			x1 = ((-b + Math.sqrt(discriminant))/(2*a)).round(3)
			x2 = ((-b - Math.sqrt(discriminant))/(2*a)).round(3)
			if x1 == -0.0 || x2 == -0.0
				puts "0.0"
			elsif x1 > x2
				puts "#{x2},#{x1}"
			elsif x1 < x2
				puts "#{x1},#{x2}"
			end
		end
	end
end
