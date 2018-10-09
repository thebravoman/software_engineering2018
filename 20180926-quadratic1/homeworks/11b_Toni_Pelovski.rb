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
	x = -c/b
	if x == -0.0
		x = 0.0
	end
	puts "#{x.round(3)}"
        end
else
    x1 = (-b - Math.sqrt(D)) / (2*a)
    x2 = (-b + Math.sqrt(D)) / (2*a)
    if x1 == -0.0
	    x1 = 0.0
    end
    if x2 == -0.0
	    x2 = 0.0
    end
    if x1 != x2
	    if x1 < x2
	    	puts "#{x1.round(3)},#{x2.round(3)}"
	    else
		puts "#{x2.round(3)},#{x1.round(3)}"
	    end
    else
	    puts "#{x1.round(3)}"
	    end
    end

