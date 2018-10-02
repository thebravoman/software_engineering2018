nums = ARGV.map{ |x| x.to_f() }

a = nums[0]
b = nums[1]
c = nums[2]

def solve_quadratic_equation(a, b, c)
	if a == 0
		if b == 0 && c == 0
			return "*"
		end
		x = -c/b
		return x.round(3)
	end

	d = b*b-4*a*c

	if d > 0
		x1 = (-b + Math.sqrt(d))/(2*a)
		x2 = (-b - Math.sqrt(d))/(2*a)

		result = [x1, x2].sort().map{ |num| num.round(3)}.join(",")
		
		return result
	elsif d == 0
		x = -b /(2*a)
		
		return x.round(3)
	else
		return "NaN"
	end
end

puts solve_quadratic_equation(a, b, c)