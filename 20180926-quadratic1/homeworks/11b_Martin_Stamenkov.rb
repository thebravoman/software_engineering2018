a = Float(ARGV[0])
b = Float(ARGV[1])
c = Float(ARGV[2])



if(a == 0)
	if(b!=0)
		x = (-c/b).round(3);
		if(x == -0.0)
		puts(0.0);
		abort();
		end
		
		
	elsif(c!=0)
			puts("NaN");
			abort();
		
		else 
			puts("*");
			abort();
		
		
	end		
end

D = b*b - (4*a*c);	

if(D == 0)
	x = (-b/(2*a)).round(3);
	if(x == -0.0)
		puts(0.0);
	end
end
if(D < 0)
	puts("NaN");
		
end
	
if(D > 0)

	x1 = ((-b + Math.sqrt(D))/ (2 * a)).round(3)
	x2 = ((-b - Math.sqrt(D))/ (2 * a)).round(3)
	
	if(x1 < x2)
		puts("#{x1},#{x2}");

	else
		puts("#{x2},#{x1}");
	end
	
end




