a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	if b == 0
		if c == 0
			puts "*"
			return
		end
		puts "NaN"
		return
	end
	puts (-c/b).round(3)
	return
end

d = b*b - 4*a*c

if d < 0
	puts "NaN"
	return
end

d = Math.sqrt(d)
x1 = ((-b + d)/(2*a))
x2 = ((-b - d)/(2*a))

if x1 != x2
	if x1 > x2
		puts "#{x2},#{x1}"
	else 
		puts "#{x1},#{x2}"
	end
else
	puts "#{x1}"
end
