a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	if b == 0
		if c == 0
			puts "*"
			return
		else
			puts "NaN"
			return
		end
	else
		x = (-c/b)
		if x == -0.0
			x = 0.0
       			puts "#{x}" 		
		return
		end	
	end
end

d = b*b - 4*a*c

if d < 0
	puts "NaN"
	return
end

d = Math.sqrt(d)
x1 = ((-b + d)/(2*a)).round(3)
x2 = ((-b - d)/(2*a)).round(3)


if x1 != x2
	if x1 > x2
		puts "#{x2},#{x1}"
	else 
		puts "#{x1},#{x2}"
	end
else
	puts "#{x1}"
end
