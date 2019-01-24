a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	if b == 0
		if c == 0
			puts "every x is solution"
		else
			puts "no solution"
		end
	else 
		puts -c / b
	end
else
	d = b**2 - 4*a*c
    if d > 0
        x1 = (-b + Math.sqrt(d)) / (2*a)
        x2 = (-b - Math.sqrt(d)) / (2*a)
        puts x1
        puts x2
    elsif d == 0
		x = (-b) / (2*a)
        puts x
    else
		puts "no real roots"
	end
end
