a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if a == 0
	if b == 0
		if c == 0
			puts "every x is solution"
		else
			puts c
		end
	else 
		if c == 0
			puts 0
		else
			puts -c / b
		end
	end
else
	d = b**2 - 4*a*c
    if d > 0
        x1 = (-b + Math.sqrt(d)) / 2*a
        x2 = (-b - Math.sqrt(d)) / 2*a
        puts x1
        puts x2
    elsif d == 0
		x = (-b) / 2*a
        puts x
    else
		puts "no solution for x, D < 0"
	end
end
