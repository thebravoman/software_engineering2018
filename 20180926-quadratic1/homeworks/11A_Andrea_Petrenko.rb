a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if(a == 0)
	if(b == 0 && c == 0)
		puts"*"
	elsif(b == 0 && c != 0)
		puts"NaN"
	else
		x = -c/b
		if(x == -0.0)
					x = 0.0
		end
		puts "#{x.round(3)}"
	end
	exit 0
end

d = b*b - 4*a*c

if(d < 0)
	puts "NaN"
end

if(d == 0)
	x1 = -b/(2*a)
	if(x1 == -0.0)
		x1 = 0.0
	end
	puts"#{x1.round(3)}"
elsif(d > 0)
	x1 = (-b + Math.sqrt(d))/(2*a)
	x2 = (-b - Math.sqrt(d))/(2*a)
	if(x1 < x2)
		puts "#{x1.round(3)},#{x2.round(3)}"
	end
	if(x2 < x1)
		puts "#{x2.round(3)},#{x1.round(3)}"
	end
end
