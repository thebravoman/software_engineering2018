
a = Integer(gets)
b = Integer(gets)
c = Integer(gets) 
puts "Calculating discriminant"
sleep(3)
disc = b*b - (4*a*c)
if disc < 0
	abort("No solution.")
end
puts "Calculating x1."
sleep(1)
puts "Calculating x1.."
sleep(1)
puts "Calculating x1..."
sleep(1)
x1 = (-b + Math.sqrt(disc))/2*a
x2 = (-b - Math.sqrt(disc))/2*a
puts "Success!"
sleep(0.5)
puts "x1: #{x1}" 
puts "x2: #{x2}"
