
a = ARGV[0]
b = ARGV[1]
c = ARGV[2]

d = b*b - 4*a*c

if d > 0 
	x1 = (-b + Math.sqrt(d))/2*a	
	x2 = (-b - Math.sqrt(d))/2*a
	puts "X1 : #{x1}"
	puts "X2 : #{x2}"
elsif d = 0
	x = -b/2*a
	puts "X : #{x}"
else
	puts "OPS!"
end
