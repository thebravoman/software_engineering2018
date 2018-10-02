a=ARGV[0].to_f
b=ARGV[1].to_f
c=ARGV[2].to_f

d=b*b-4*a*c 

if a==0
	if b==0 and c==0
			puts "*"
	else
		x=-c/b
		x=x.round(3);
		puts "#{x}"
	end

else
	if d<0
		puts "NaN"

	elsif d == 0
		x=(-b)/(2*a)
		x=x.round(3);
		puts "#{x}"

	else
		x1=(-b+Math.sqrt(d))/(2*a)
		x2=(-b-Math.sqrt(d))/(2*a)
		x1=x1.round(3)
		x2=x2.round(3)
		if x2 > x1
			puts "#{x1},#{x2}"
		elsif x1>x2
			puts "#{x2},#{x1}"
		end
	end
end
