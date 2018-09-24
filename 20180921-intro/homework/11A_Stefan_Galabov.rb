a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

discriminant = b*b - 4*a*c
flag = 0
if a == 0
	puts "a is 0 then the equation in not quadratic."
	var = -c/b
	puts "Result : #{var}"
	flag = 1 	
end
 
if discriminant < 0
	puts "Discriminant less than 0." 
elsif flag != 1
	x1 = (-b + Math.sqrt(discriminant))/(2*a)
	x2 = (-b - Math.sqrt(discriminant))/(2*a)
	puts "X1: #{x1}"
	puts "X2: #{x2}"
end
