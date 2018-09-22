a = ARGV[0]
b = ARGV[1]
c = ARGV[2]
flag = 0
flag1 = 0

if a == nil || b == nil || c== nil
	flag = 1
end

a = a.to_f
b = b.to_f
c = c.to_f
d = b*b-4*a*c

if c == 0
	flag1 = 1
end

if flag == 1
	puts "Please enter all 3 values!"

elsif a == 0 && b == 0 && c == 0	
	puts "a can't be equal to zero!"

elsif flag1 == 1
	
	x1 = 0
	x2 = -b/a

	puts "X1 = #{x1}"
	puts "X2 = #{x2}"


elsif a == 0
	puts "a can't be equal to zero!"	

elsif d == 0
	x = -b/(2*a)
	puts "X = #{x}"

elsif d > 0

	x1 = (-b+Math.sqrt(d))/(2*a)
	x2 = (-b-Math.sqrt(d))/(2*a)

	puts "X1 = #{x1}"

	puts "X2 = #{x2}"

elsif d < 0
	puts "No solution"
end

