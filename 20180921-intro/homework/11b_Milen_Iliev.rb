a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i


if a == 0
	if b!= 0 
		x = -c/b
		puts "x: #{x}"
		
	else	
		if c != 0 
			puts "There aren't any roots"
			
		else 
			puts "Every x is a root"
		end
	end	
else 
	d = b*b - 4*a*c
	if d > 0
		x1 = (-b + Math.sqrt(d))/(2*a)
		x2 = (-b - Math.sqrt(d))/(2*a)
		puts "x1: #{x1}"
		puts "x2: #{x2}"
				
	else 
		if d == 0
			x = -b/(2*a)
			puts "x: #{x}"
		else
			puts "There aren't any roots"
		end
	end
end
