a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

d = (b*b) - (4*a*c)

def min(x1 ,x2)
	if x1 > x2
		puts "#{x2},#{x1}"
	else 
		puts "#{x1},#{x2}"
	end
end


if a == 0 && b == 0 && c == 0
	puts "*"

elsif d < 0 || a == 0 && b == 0
	puts "NaN"

elsif a == 0
	x = -c/b
	x = x.round(3)
	puts "#{x}"

elsif b == 0 && c == 0
	puts "0"

elsif d == 0
	x = -b / (2*a)
	x = x.round(3)
	puts "#{x}"

else 
	x1 = (-b + Math.sqrt(d)) / (2*a)
	x2 = (-b - Math.sqrt(d)) / (2*a)
	x1 = x1.round(3)
	x2 = x2.round(3)
	min(x1,x2)
end
