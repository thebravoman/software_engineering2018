a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i 
disc = b*b - (4*a*c)
if disc < 0
	puts "NaN"
	exit()
end


if (a == 0 && b == 0 && c == 0) || (a == 0 && b == c)
	puts "*"
end

if a == 0
	puts "Not a quadratic equation!"
	exit()
end


x1 = ((-b + Math.sqrt(disc))/2*a).round(3)
x2 = ((-b - Math.sqrt(disc))/2*a).round(3)

if disc == 0
	puts x1
else
	puts "#{x1},#{x2}" 
	
end
