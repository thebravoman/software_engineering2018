# ax^2 + bx + c = 0



a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

d = b ** 2 - (4 * a * c)

if d < 0 
	abort("Nope")
end

x1 = (-b + Math.sqrt(d))/ 2 * a
x2 = (-b - Math.sqrt(d))/ 2 * a

x11 = (-b + Math.sqrt(d) )/ (2 * a)
x22 = (-b - Math.sqrt(d) )/ (2 * a)

puts "No parentheses : x1 = #{x1} | x2 = #{x2}"
puts "   Parentheses : x1 = #{x11} | x2 = #{x22}"
