a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	if b == 0
		if c == 0
			puts "*"
		else
			puts "NaN"
		end
	else 
		x = (-c / b).round(3)
		puts x
	end
else
	d = b**2 - 4*a*c
	if d > 0
		x1 = ((-b + Math.sqrt(d)) / (2*a)).round(3);
		x2 = ((-b - Math.sqrt(d)) / (2*a)).round(3);
		puts "#{x1},#{x2}";
	elsif d == 0
		x = (-b / (2*a)).round(3);
		puts x
	else
		puts "NaN"
	end
end
