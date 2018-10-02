if(ARGV.length != 3)
	abort("Use [program_name] [a] [b] [c] in order to use the program.")
end

a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a != 0
	d = b*b-4*a*c
	
	if d < 0
		puts "NaN"
	elsif d == 0
		puts "x1 and x2: #{-b/2.a}"
	else 
		x1 = (-b + Math.sqrt(d)) / (2*a)
		x2 = (-b - Math.sqrt(d)) / (2*a)
		if x1 < x2
			puts "x1: #{x1}" 
			puts "x2: #{x2}"	
		else
			puts "x2: #{x2}"
                        puts "x1: #{x1}"
		end
	end
else
	if b == 0
		if c == 0
			puts "*"
		else
			puts "NaN"
		end
	else
		x = (-c/b).round(3)
		puts "#{x}"
	end
end
