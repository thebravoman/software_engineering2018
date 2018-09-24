
a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	x = -c/b
	puts "X: #{x}"

else

	d = b*b - 4*a*c

	if d < 0
		puts "no solution"

	elsif d == 0
		x = (-b) / 2*a
		puts "X: #{x}"

	else
		x1 = (-b + Math.sqrt(d)) / 2*a
		x2 = (-b - Math.sqrt(d)) / 2*a

		puts "X1: #{x1}"
		puts "X2: #{x2}"

	end

end
