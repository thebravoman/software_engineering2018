#!/usr/bin/ruby
# ax^2 + bx + c = 0

def get_roots a, b, c

	d = (b ** 2) - (4 * a * c)

	if d < 0
		puts "NaN"
		exit 1
	end
	
	if a == 0
		return -c / b
	end

	x1 = (-b + Math.sqrt(d))/ (2 * a)
	x2 = (-b - Math.sqrt(d))/ (2 * a)

	return x1, x2
end

if (ARGV.length != 3) 
	abort "Usage: #{$PROGRAM_NAME} <number> <number> <number>"
end

a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	if b == 0
		if c == 0
			puts "*"
			exit 0
		else
			puts "NaN"
			exit 1
		end
	end
	x = get_roots(a, b, c).round(3)
	puts x
	exit 0
end

x1, x2 = get_roots a, b, c

x1 = x1.round 3
x2 = x2.round 3



if x1 == x2
	puts x1
	exit 0
end

if x1 > x2
	x1, x2 = x2, x1
end

puts "#{x1},#{x2}"

