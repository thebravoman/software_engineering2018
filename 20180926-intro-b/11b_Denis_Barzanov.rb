# ax^2 + bx + c = 0

if (ARGV.length != 3) 
	abort("Usage: #{$PROGRAM_NAME} <number> <number> <number>")
end

a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if (a == 0)
	abort("Not a quadratic equation...")
end

def get_roots(a, b, c)

	d = b ** 2 - (4 * a * c)

	if d < 0 
		abort("No real roots for the equation")
	end


	x1 = (-b + Math.sqrt(d))/ (2 * a)
	x2 = (-b - Math.sqrt(d))/ (2 * a)
	return x1, x2
end

x1, x2 = get_roots(a, b, c)

puts "Roots: x1 = #{x1} | x2 = #{x2}"

