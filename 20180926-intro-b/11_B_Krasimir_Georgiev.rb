if(ARGV.length < 3)
	abort("Entered less than 3 variables")
end

a = Integer(ARGV[0])
b = Integer(ARGV[1])
c = Integer(ARGV[2])

discriminant = b * b - 4 * a * c
if discriminant < 0
	puts "discriminant less than 0: #{discriminant}"
else
	x1 = (-b + Math.sqrt(discriminant)) / (2 * a);
	x2 = (-b - Math.sqrt(discriminant)) / (2 * a);

	puts "x1: #{x1}"
	puts "x2: #{x2}"
end