a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f
d= b*b-4*a*c

if a==0 && b==0 && c==0
	puts "*"
	return
end 

if d<0
	puts "NaN"
elsif d == 0
	x = (-b/(2*a)).round(3)
	puts "#{x}"
	return
else 
	x1 = ((-b + Math.sqrt(d))/(2*a)).round(3)

	x2 = ((-b - Math.sqrt(d))/(2*a)).round(3)
	puts "#{x1},#{x2}"
end