a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

D = b*b - 4*a*c

if D < 0 
    puts "NaN"
elsif a == 0
    if b == 0
        if c == 0
	    puts "*"
	else
	    puts "NaN"
	    end
    else
	x = (-c/b).round(3)
	if x == -0.0
		x = 0.0
	end
	puts "#{x}"
        end
else
    x1 = ((-b + Math.sqrt(D)) / (2*a)).round(3)
    x2 = ((-b - Math.sqrt(D)) / (2*a)).round(3)

    if x2 > x1
    puts "#{x1},#{x2}"

    else
    puts "#{x2},#{x1}"
    end


end
