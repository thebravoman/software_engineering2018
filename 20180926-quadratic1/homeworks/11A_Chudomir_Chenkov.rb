
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
		x = -c/b
		if x == 0
			x = 0.0
		end
		x = x.round(3)
		puts "#{x}"
	end

else

	d = b*b - 4*a*c

	if d < 0
		puts "NaN"

	elsif d == 0
		x = (-b) / (2*a)
		if x == 0
			x = 0.0
		end
		x = x.round(3)
		puts "#{x}"

	else

		x1 = (-b + Math.sqrt(d)) / (2*a)
		x2 = (-b - Math.sqrt(d)) / (2*a)

		if x1 == 0
			x1 = 0.0
		end

		if x2 == -0.0
			x2 = 0.0
		end

		x1 = x1.round(3)
		x2 = x2.round(3)

		if x2 > x1
			puts "#{x1},#{x2}"
		elsif x2 < x1
			puts "#{x2},#{x1}"
		end

	end

end
