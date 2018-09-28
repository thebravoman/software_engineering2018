a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if a == 0
	p "It's a linear one..."
	return
end

d = b**2 - 4*a*c

if d < 0
	p "No real roots..."
	return
end

d = Math.sqrt(d)

p "X1: #{(-b-d)/(2*a)}"
p "X2: #{(-b+d)/(2*a)}"


