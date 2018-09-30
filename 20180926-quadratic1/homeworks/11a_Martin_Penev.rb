arr = ARGV	


a = arr[0].to_f
b = arr[1].to_f
c = arr[2].to_f




if a == 0 && b == 0 && c == 0
	puts "*"
# if a == 0
# 	if b == 0 && c == 0
# 		puts "*"
# 	end

# 	x = -c/b
# 	puts "#{x}"

# elsif(b == 0)
# 	x = Math.sqrt((-c)/a)
# 	puts "#{x}"
else
	D = b*b - 4*a*c
	if D < 0
		puts "NaN"

	elsif D == 0
		x  = ((-b)/(2*a)).round(3)

		puts "#{x}"
	else
		if a == 0
			x = (-c/b).round(3)
			puts "#{x}"
		else
			x1 = ((-b + Math.sqrt(D))/(2*a)).round(3)
			x2 = ((-b - Math.sqrt(D))/(2*a)).round(3)
			if x1 > x2
				c = x1
				x1 = x2
				x2 = c
			end
			puts "#{x1},#{x2}"
		end
	end
end

# a*x + b*x + c = 0 #

#  D = 0 - 4 * 15 * 4
#  D < 0
#  puts NAN 

