a=ARGV[0].to_f
b=ARGV[1].to_f
c=ARGV[2].to_f

d=b*b-4*a*c

if a==0 && b==0 && c==0
	puts "Every x is a solution"
end

if a==0
	x=-c/b
	puts "The result: x=#{x}"
end

if d>0
	x1=(-b+Math.sqrt(d))/(2*a)
	x2=(-b-Math.sqrt(d))/(2*a)
	puts "The result: x1=#{x1}, x2=#{x2}"
end

if d==0
	x1=x2=(-b)/(2*a)
	puts "The result: x1=#{x1}, x2=#{x2}"
end

if d<0
	puts "No solution"
end


