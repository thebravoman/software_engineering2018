arr = ARGV	

a = arr[0].to_i
b = arr[1].to_i
c = arr[2].to_i

x1 = (-b + Math.sqrt(b*b - 4*a*c))/2*a
x2 = (-b + Math.sqrt(b*b + 4*a*c))/2*a

puts "x1 = #{x1}; x2 = #{x2}"

