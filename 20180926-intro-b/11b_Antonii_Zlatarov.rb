a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

d = Math.sqrt(b**2-4*a*c)
if a==0 or d < 0 
	abort("Error")
end
x1 = (-b + d) / 2*a
x2 = (-b - d) / 2*a

puts "x1 : #{x1}"
puts "x2 : #{x2}"

