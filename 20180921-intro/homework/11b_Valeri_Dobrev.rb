
a=ARGV[0].to_i
b=ARGV[1].to_i
c=ARGV[2].to_i

if a!=0
	d=b*b-4*a*c
	if d>0
		x1=(-b+Math.sqrt(d))/2*a
		x2=(-b - Math.sqrt(d))/2*a
		puts "x1=#{x1}, x2=#{x2}"
	elsif d==0
		x=(-b)/2*a
		puts "x1=x2=#{x}"
	else 
		puts "There isn't any solution to the equation!"
	end
else 
	if b==0
		if c!=0			
			puts "There isn't any solution to the equation!"
		else 
			puts "Every x is solution!"	
		end
	else 
		x=-c/b
		puts "x=#{x}"
	end
end
