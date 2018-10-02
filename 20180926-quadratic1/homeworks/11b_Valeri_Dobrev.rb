
a=ARGV[0].to_f
b=ARGV[1].to_f
c=ARGV[2].to_f

if a!=0
	d=b*b-4*a*c
	if d>0
		x1=(-b-Math.sqrt(d))/(2*a)
		x2=(-b + Math.sqrt(d))/(2*a)
		if x1<x2
			puts "#{x1.round(3)},#{x2.round(3)}"
		else 
			puts "#{x2.round(3)},#{x1.round(3)}"
		end
				
	elsif d==0
		x=(-b)/(2*a)
		puts "#{'% .3f' % x}"
	else 
		puts "NaN"
	end
else 
	if b==0
		if c!=0			
			puts "NaN"
		else 
			puts "*"	
		end
	else 
		x=(-c)/b
		puts "#{x.round(3)}"
	end
end
