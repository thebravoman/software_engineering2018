a=ARGV[0].to_f
b=ARGV[1].to_f
c=ARGV[2].to_f

d=b*b-4*a*c


if a == 0
	x=-c/b
	puts "x = " << x.to_s
else
	if d<0
		puts "no real roots"
	
	elsif d == 0
		x = -b/(2*a)
		puts "x = " << x.to_s
	
	else
		x1 = (-b + Math.sqrt(d))/(2*a)

		x2 = (-b - Math.sqrt(d))/(2*a)

		puts "x1=" << x1.to_s
		puts "x2=" << x2.to_s
	end
end
