a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

D = b*b - 4*a*c

if D < 0 
    puts "D < 0"
elsif a == 0
    if b == 0
        if c == 0
	    puts "Every x"
	else
	    puts "No real x"
	    end
    else
	x = -c/b
	puts "X: #{x}"
        end
else
    x1 = (-b + Math.sqrt(D)) / (2*a)
    x2 = (-b - Math.sqrt(D)) / (2*a)
    puts "X1: #{x1}"
    puts "X2: #{x2}"
    end

