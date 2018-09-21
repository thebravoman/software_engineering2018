a=ARGV[0].to_i
b=ARGV[1].to_i
c=ARGV[2].to_i


x1 = (-b + Math.sqrt(b*b-4*a*c))/2*a

x2 = (-b - Math.sqrt(b*b-4*a*c))/2*a

puts "x1=" + x1.to_s
puts "x2=" + x2.to_s
