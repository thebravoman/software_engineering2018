nums = ARGV.map{ |x| x.to_i() }

a = nums[0]
b = nums[1]
c = nums[2]

d = b*b-4*a*c

if d > 0
	x1 = (-b + Math.sqrt(d))/(2*a)
	x2 = (-b - Math.sqrt(d))/(2*a)

	puts "x1: #{x1}"
	puts "x2: #{x2}"
elsif d == 0
	x = -b /(2*a)
	puts "x: #{x}"
else
	puts "no real solutions."
end