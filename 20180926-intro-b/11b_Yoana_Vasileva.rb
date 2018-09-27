a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

d = b ** 2 - (4*a*c)

if(d<0)
	puts("nqa stane")
else
	if(a==0)
	puts "Tva ne e kvadratno uravnenie"
else
	if(d==0)
	x = -b / (2*a)
	puts "x: #{x}"
else


x1 = (-b + Math.sqrt(b*b-4*a*c)) / 2*a
x2 = (-b - Math.sqrt(b*b-4*a*c)) / 2*a

puts "x1: #{x1}"
puts "x2: #{x2}"
	end
end
~                                                                                                                       ~           
