if(ARGV.length != 3)
	abort("NaN")
end

a = Float(ARGV[0])
b = Float(ARGV[1])
c = Float(ARGV[2])


if a == 0
	if b == 0
		if c == 0
			puts "*"
			abort()
		else
			puts "NaN"
			abort()
		end
	else
		x = (-c/b).round(3)
		puts "#{x}"
		abort()
	end
end

discriminant = b * b - 4 * a * c
if discriminant < 0
	puts "NaN"
	abort()
end


x1 = ((-b + Math.sqrt(discriminant)) / (2 * a)).round(3);
x2 = ((-b - Math.sqrt(discriminant)) / (2 * a)).round(3);

if x1 == x2
	puts "#{x1}"
elsif x1 > x2
	puts "#{x2},#{x1}"
else
	puts "#{x1},#{x2}"
end