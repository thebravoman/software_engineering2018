a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if (a==0)&&(b==0)&&(c==0)
	puts "Every x is a solution"
	return
end
if b*b-4*a*c < 0
	puts "No solution"
	return
end
if a == 0
	x = -c / b
	puts "x = #{x}"
	return
end

x1 = (-b + Math.sqrt(b*b-4*a*c))/(2*a)
x2 = (-b - Math.sqrt(b*b-4*a*c))/(2*a)

d = 0

if ((Math.sqrt(b*b-4*a*c))/(2*a)) < 0
	puts "No solution"
elsif x1 == x2
	puts "x = #{x1}"
else
	puts "x1 = #{x1}, x2 = #{x2}"
end