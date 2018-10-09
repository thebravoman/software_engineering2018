a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f
 
if a == 0
	if b == 0
		if c == 0
			puts "*"
			exit
		end
		puts "NaN"
		exit
	end
    x = (-c/b).round(3)
    puts "#{x}"
    exit
end
 
 
d = b*b - 4*a*c
 
if (d == 0)
    x = -b/(2*a)
	if x.to_s == "-0.0"
		x = 0.0
	end
    puts "#{x.round(3)}"
 
elsif (d > 0)
    x1 = (-b-Math.sqrt(d))/(2*a)
    x2 = (-b+Math.sqrt(d))/(2*a)
   
    if x1 > x2
        puts "#{x2.round(3)},#{x1.round(3)}"
    else
        puts "#{x1.round(3)},#{x2.round(3)}"
    end
 
else
    puts 'NaN'
   
end
