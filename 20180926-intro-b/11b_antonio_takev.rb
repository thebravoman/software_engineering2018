
a = ARGV[0].to_i;
b = ARGV[1].to_i;
c = ARGV[2].to_i;

d = b*b - 4*a*c;


if d>0
	x1 = (-b + Math.sqrt(d))/2*a;
	x2 = (-b - Math.sqrt(d))/2*a;

	puts "x1: #{x1}"
	puts "x2: #{x2}"

elsif d==0
	x1 = (-b)/2*a;
	puts "x1=x2: #{x1.to_i}"
	
elsif d < 0
	puts "there aren't real root!" 
end
