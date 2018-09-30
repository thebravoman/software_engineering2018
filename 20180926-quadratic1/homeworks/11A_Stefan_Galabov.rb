a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

valid = 1
if a == 0 && b == 0 && c == 0
	puts "*"
	valid = 0
end

discriminant = b*b - 4*a*c
flag = 0
if a == 0 && valid != 0
	var = -c/b
	puts "#{var.round(3)}"
	flag = 1 	
end

if discriminant < 0
	puts "NaN"
elsif discriminant == 0 && valid != 0
	x = -b/(2*a)
	if x == 0
		puts "#{(x*(-1)).round(3)}"
	else
		puts "#{x.round(3)}"
	end 
elsif flag != 1
	x1 = ((-b + Math.sqrt(discriminant))/(2*a)).round(3)
	x2 = ((-b - Math.sqrt(discriminant))/(2*a)).round(3)
	if x1 > x2
		puts "#{x2},#{x1}"
	else x1 < x2
		puts "#{x1},#{x2}"
	end
end
