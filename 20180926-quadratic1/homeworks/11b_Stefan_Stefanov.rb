a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f 
disc = b*b - (4*a*c)
if disc < 0
	puts "NaN"
	exit()
end

if a == 0
	if b == 0
		if c == 0
			puts "*"
			
		else
			puts "NaN"
		end
		
	else
		puts (-c/b).round(3)
	end
else

	x1 = ((-b + Math.sqrt(disc))/(2*a)).round(3)
	x2 = ((-b - Math.sqrt(disc))/(2*a)).round(3)

	if disc == 0
		puts x1
	else
		if x2 < x1
			x1,x2 = x2,x1
		end
		puts "#{x1},#{x2}" 
		
	end
end
