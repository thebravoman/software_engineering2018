a = Float(ARGV[0])
b = Float(ARGV[1])
c = Float(ARGV[2])

def solve_quad_eq(a, b ,c)
		if (a == 0)
			if b == 0 && c == 0
				return "All x's are solutions..."
			end
			#bx + c = 0
			return -c/b
		end

		d = b*b - 4*a*c

		if d < 0
			return "No solution..."
		end

		if d == 0
			return -b/(2*a)
		end

		x1 = (-b + Math.sqrt(d))/(2*a)
		x2 = (-b - Math.sqrt(d))/(2*a)

		return [x1, x2]

	end

puts "Result: " + String(solve_quad_eq(a, b, c))