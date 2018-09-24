a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

D = b*b - 4*a*c

if(a == 0)
	puts"There is no valid value!"
elsif(D<0)
	puts "Every x is a solution!"
elsif(D==0)
	x1 = (-b + Math.sqrt(D))/2*a
	puts"x1 = x2 = #{x1}"
elsif(D>0)
	x1 = (-b + Math.sqrt(D))/2*a
	x2 = (-b - Math.sqrt(D))/2*a
	puts "x1: #{x1}"
	puts "x2: #{x2}"
end
