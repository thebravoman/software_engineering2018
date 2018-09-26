def quadEq(a, b, c)

	if a == 0
		x = - c / b
		puts("X = #{x}")
		return
	end

	d = b * b - (4 * a * c)

	if d < 0
		puts("No real roots.")

	elsif d == 0
		x = -b / (2 * a)
		puts("X = #{x}")
	
	else 
		x1 = (-b + Math.sqrt(d))/(2*a)

		x2 = (-b - Math.sqrt(d))/(2*a)
		
		puts("X1 = #{x1}, X2 = #{x2}")
	
	end
end

quadEq(ARGV[0].to_f(), ARGV[1].to_f(), ARGV[2].to_f())