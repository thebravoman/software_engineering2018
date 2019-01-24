a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

d = b*b - 4*a*c

if d > 0
	puts "X1 = #{x1 = (-b + Math.sqrt(d)) / (2*a)}"
	puts "X2 = #{x2 = (-b - Math.sqrt(d)) / (2*a)}"

elsif d == 0
	puts "X = #{x = -b/2*a}"

else 
	puts "no solution"
end
