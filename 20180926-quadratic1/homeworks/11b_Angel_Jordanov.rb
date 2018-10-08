a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0.0
	if b != 0.0
		puts ""+ ((-c/b).round(3)).to_s
	else	
		if c != 0.0 
			puts "NaN"	
		else
			puts "*"
		end
	end
		
else
	
	d = b * b - 4 * a * c
		
	if d < 0.0
		puts "NaN" 
	elsif d == 0.0
		x3 = ((-b / (2 * a)).round(3))
		if x3 == - 0.0
			x3 = 0.0
		end		
		puts "#{x3}" 
			
	else 
		x1 = ((-b + Math.sqrt(d)) / (2 * a)).round(3)
		if x1 == - 0.0
			x1 = 0.0
		end
		x2 = ((-b - Math.sqrt(d)) / (2 * a)).round(3)
		if x2 == - 0.0
			x2 = 0.0
		end
			if(x1 < x2)
				puts "#{x1},#{x2}"
			else
				puts "#{x2},#{x1}"
			end	
			
	end
end