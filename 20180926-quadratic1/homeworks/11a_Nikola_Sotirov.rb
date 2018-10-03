a = Float(ARGV[0])
b = Float(ARGV[1])
c = Float(ARGV[2])

def solve_quad_eq(a, b ,c)
		if a == 0
			if b == 0 && c == 0
				return "*"
			end

			if b == 0
				return "NaN"
			end
			
			result = -c/b

			if String(result) == "-0.0"
				result = -result
			end

			return result.round(3)
		else
			if b == 0 && c == 0
				return 0.0
			end

			if b == 0
				begin
					result = [Math.sqrt(-c/a).round(3), -Math.sqrt(-c/a).round(3)]
				rescue
					return "NaN"
				end

				if String(result) == "-0.0"
					result = -result
				end

				return result
			end
		end

		d = b*b - 4*a*c

		if d < 0
			return "NaN"
		end

		if d == 0
			result = -b/(2*a)
			if String(result) == "-0.0"
				result = -result
			end

			return result.round(3)
		end

		x1 = (-b + Math.sqrt(d))/(2*a)
		x2 = (-b - Math.sqrt(d))/(2*a)

		if String(x1) == "-0.0"
			x1 = -x1
		end

		if String(x2) == "-0.0"
			x2 = -x2
		end

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