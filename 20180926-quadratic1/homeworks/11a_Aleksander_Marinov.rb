def square_equation(a, b, c)
	if a == 0 && b == 0 && c == 0
		puts"*"
	elsif a == 0 && b == 0 && c != 0
		puts "NaN"
	elsif a == 0 && b != 0 && c != 0
		x = -c/b
		puts "#{x}"
	else
		d = b**2 - 4*a*c
		if d < 0
			puts "NaN"
		elsif d == 0
			x = -b/2*a
			puts"#{x}"
		elsif d > 0
			x1 = (-b + Math.sqrt(d))/2*a
			x2 = (-b - Math.sqrt(d))/2*a
			puts "#{x1},#{x2}"
		end
	end
end

square_equation(ARGV[0].to_f, ARGV[1].to_f, ARGV[2].to_f)
