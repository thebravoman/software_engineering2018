a=ARGV[0].to_f
b=ARGV[1].to_f
c=ARGV[2].to_f

d=b*b-4*a*c


if a == 0
	if (b==0 and c==0)
		puts "*"
	elsif d>0
		x=(-c/b).round(3)
		puts x.to_s
	elsif c!=0
		puts "NaN"
	end
else
	if d<0
		puts "NaN"
	
	elsif d == 0
		x = (-b/(2*a)).round(3)
		puts x.to_s
	
	else
		x1 = ((-b + Math.sqrt(d))/(2*a)).round(3)

		x2 = ((-b - Math.sqrt(d))/(2*a)).round(3)
		
		if x1>x2 
			x1, x2 = x2, x1
		end

		puts x1.to_s << "," << x2.to_s 
	end
end
