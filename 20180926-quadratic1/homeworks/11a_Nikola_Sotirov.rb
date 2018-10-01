a = Float(ARGV[0])
b = Float(ARGV[1])
c = Float(ARGV[2])

def solve_quad_eq(a, b ,c)
		if (a == 0)
			if b == 0
				return "NaN"
			end

			if b == 0 && c == 0
				return "*"
			end
			
			return (-c/b).round(3)
		end

		d = b*b - 4*a*c

		if d < 0
			return "NaN"
		end

		if d == 0
			return (-b/(2*a)).round(3)
		end

		x1 = (-b + Math.sqrt(d))/(2*a)
		x2 = (-b - Math.sqrt(d))/(2*a)

		if x1 > x2
			x1, x2 = x2, x1
		end

		return [x1.round(3), x2.round(3)]

	end

result = solve_quad_eq(a, b, c)

begin 
	puts String(result.join(","))
rescue
	puts String(result)
end