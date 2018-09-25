a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i
if a == 0
	puts "No solution"
end
d = b*b -4*a*c

if d < 0
	puts "No solution"
elsif d == 0
	x = -b/(2*a)
	puts x
else d > 0
	x1 = (-b+Math.sqrt(d))/(2*a)
	x2 = (-b-Math.sqrt(d))/(2*a)
	puts "X1 = #{x1}"
	puts "X2 = #{x2}"
end

