arr = ARGV	

a = arr[0].to_i
b = arr[1].to_i
c = arr[2].to_i

D = b*b - 4*a*c

if D < 0
	puts "\nThere are no solutions to that equation!  ;("

elsif D == 0
	x = (-b)/(2*a)
	puts "\nThere is only one solution for that equation:\nx = #{x}"
else
	x1 = (-b + Math.sqrt(D))/(2*a)
	x2 = (-b - Math.sqrt(D))/(2*a)
	puts "\nThere are two solutions for that equation:\nx1 = #{x1}; x2 = #{x2}"
end



