a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	if b != 0
		puts ""+ ((-c/b).round(3)).to_s
	else	
		if c != 0 
			puts "NaN"	
		else
			puts "*"
		end
	end
		
else
	
	d = b * b - 4 * a * c
		
	if d < 0
		puts "NaN" 
	elsif d == 0
		puts ""+ ((-b / (2 * a)).round(3)).to_s
	else 
		x1 = ((-b + Math.sqrt(d)) / (2 * a)).round(3)
		x2 = ((-b - Math.sqrt(d)) / (2 * a)).round(3)
			if(x1 < x2)
				puts "#{x1},#{x2}"
			else
				puts "#{x2},#{x1}"
			end	
			
	end
end