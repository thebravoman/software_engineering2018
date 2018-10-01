
a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

d = b*b - 4*a*c

if a == 0
	if b == 0
		if c == 0
			puts "*"
		else
			puts "NaN"
		end
	else
		x = -c / b
		puts "#{x.round(3)}"
	end
else
	if d < 0
		puts "NaN"
	elsif d == 0
		x = -b / (2*a)
		puts "#{x.round(3)}"
	else
		x1 = (-b + Math.sqrt(d)) / (2*a)
		x2 = (-b - Math.sqrt(d)) / (2*a)
		if x1 > x2
			c = x1
			x1 = x2
			x2 = c
		end
		puts "#{x1.round(3)},#{x2.round(3)}"
	end
end	

