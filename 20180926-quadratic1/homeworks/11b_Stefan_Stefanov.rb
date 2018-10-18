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
		x1 = (-c/b).round(3)
		if x1 == -0.0
			x1 = 0.0
		end
		puts x1
	end
else

	x1 = ((-b + Math.sqrt(disc))/(2*a)).round(3)
	x2 = ((-b - Math.sqrt(disc))/(2*a)).round(3)
	if x1 == -0.0
	    x1 = 0.0
	end
	if x2 == -0.0
	    x2 = 0.0
	end
	if disc == 0
		puts x1
	else
		if x2 < x1
			x1,x2 = x2,x1
		end
		puts "#{x1},#{x2}" 
		
	end
end
