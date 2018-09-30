
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
		x = c / b
		puts "#{x}"
	end
else
	if d < 0
		puts "NaN"
	elsif d == 0
		x = -b / 2*a
		puts "#{x}"
	else
		x1 = (-b + Math.sqrt(d)) / 2*a
		x2 = (-b - Math.sqrt(d)) / 2*a
		puts "#{x1}, #{x2}"
	end
end	

