a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	if b == 0 && c == 0
		puts "*"
		return
	end
	x = -c / b
	puts "#{x.round(3)}"
	return
end
if b*b-4*a*c < 0
	puts "NaN"
	return
end

d = Math.sqrt(b*b-4*a*c)

x1 = (-b + d)/(2*a)
x2 = (-b - d)/(2*a)

if (d/(2*a)) < 0
	puts "NaN"
elsif x1 == x2
	puts "#{x1.round(3)}"
else
	if x1 < x2
		puts "#{x1.round(3)},#{x2.round(3)}"
	else	
		puts "#{x2.round(3)},#{x1.round(3)}"
	end
end