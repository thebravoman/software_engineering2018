a = Integer(ARGV[0])
b = Integer(ARGV[1])
c = Integer(ARGV[2])

d = b*b - 4*a*c

if d < 0 
    puts "Error"
else
    x1 = (-b + Math.sqrt(D)) / 2*a
    x2 = (-b - Math.sqrt(D)) / 2*a
    puts "X1: #{x1}"
    puts "X2: #{x2}"
    end
