
a = ARGV[0]
b = ARGV[1]
c = ARGV[2]

x1 = (-b + Math.sqrt(b*b - 4*a*c))/2*a
x2 = (-b - Math.sqrt(b*b - 4*a*c))/2*a

puts "X1 : #{x1}"
puts "X2 : #{x2}"
