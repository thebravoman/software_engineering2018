a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

d = b*b-4*a*c

if a == 0 && b == 0 && c == 0	
	puts "*"

elsif a == 0 && b == 0
	puts "NaN"

elsif d < 0
	puts "NaN"

elsif a == 0
	x = (-c/b).round(3)
	if x == -0.0
		x = 0.0
	end
	puts "#{x}"


elsif d == 0
	x = (-b/(2*a)).round(3)
	if x == -0.0
		x = 0.0
	end
	
	puts "#{x}"

elsif d > 0

	x1 = ((-b+Math.sqrt(d))/(2*a)).round(3)
	x2 = ((-b-Math.sqrt(d))/(2*a)).round(3)

	if x1 == -0.0
		x1 = 0.0
	end

	if x2 == -0.0
		x2 = 0.0
	end
	

	if x1 > x2
		c = x1
		x1 = x2
		x2 = c
	end

	puts "#{x1},#{x2}"

end