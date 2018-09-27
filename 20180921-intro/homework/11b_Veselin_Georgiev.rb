a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

D = b*b - 4*a*c

if D < 0 
    puts "There are no real solutions to this equation. (D < 0)"
elsif a == 0
    if b == 0
        if c == 0
	    puts "Every value of x is a solution"
	else
	    puts "There are no solutions to this equation."
	    end
    else
	x = -c/b
	puts "Its linear -> X: #{x}"
        end
else
    x1 = (-b + Math.sqrt(D)) / 2*a
    x2 = (-b - Math.sqrt(D)) / 2*a
    puts "X1: #{x1}"
    puts "X2: #{x2}"
end
