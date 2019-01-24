if(ARGV.length != 3)
	abort("Use [program_name] [a] [b] [c] in order to use the program.")
end

a = Integer(ARGV[0])
b = Integer(ARGV[1])
c = Integer(ARGV[2])

if(a == 0)
	abort("Linear equation! Use program only for quadratic equations.")
end

discriminant = b * b - 4 * a * c
if discriminant < 0
	abort("Discriminant #{discriminant} is less than 0. No solution!")
end


x1 = (-b + Math.sqrt(discriminant)) / (2 * a);
puts "x1: #{x1}"


x2 = (-b - Math.sqrt(discriminant)) / (2 * a);
if(x1 != x2)
	puts "x2: #{x2}"
end