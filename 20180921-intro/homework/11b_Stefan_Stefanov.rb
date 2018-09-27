a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i 
disc = b*b - (4*a*c)
if disc < 0
	abort("No solution.")
end

if a < 0
	abort("Not a quadratic equation!")
end

x1 = (-b + Math.sqrt(disc))/2*a
x2 = (-b - Math.sqrt(disc))/2*a

puts "x1: #{x1}" 
puts "x2: #{x2}"
