a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	if b != 0
		puts ""+ (-c/b).to_s
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
		puts ""+ (-b / (2 * a)).to_s
	else 
		x1 = ((-b + Math.sqrt(d)) / (2 * a))
		x2 = ((-b - Math.sqrt(d)) / (2 * a))
		puts "#{x1},#{x2}"
	end
end