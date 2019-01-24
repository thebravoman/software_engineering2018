a = ARGV[0]
b = ARGV[1]
c = ARGV[2]
d=b*b-4*a*c

if d<0
	puts "There aren't real roots!"
elsif d==0
	x=-b/2*a
	puts "x: #{x}"
else
	x1=(-b+Math.sqrt(b*b-4*a*c))/2*a
	x2 = (-b-Math.sqrt(b*b-4*a*c))/2*a

	puts "x1:#{x1}"
	puts "x2:#{x2}"
