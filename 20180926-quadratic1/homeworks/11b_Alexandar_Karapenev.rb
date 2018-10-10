a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if (a == 0)

	if(b != 0)
		x = (-c/b).round(3);
		
		if(x == -0.0)
			puts(0.0);
			abort();
		else
			puts(x);
			abort();
		end
	
	else
	
		if(c != 0)
			puts("NaN")
		else
			puts("*")
		end
	
	end

else
	D = b*b - 4*a*c
	if(D > 0)
		x1 = (( -b + Math.sqrt(D) ) / (2*a)).round(3)
		x2 = (( -b - Math.sqrt(D) ) / (2*a)).round(3)
		
		if(x1 == -0.0)
		    x1 = 0.0;
	    end
	    
	    if(x2 == -0.0)
		    x2 = 0.0;
	    end
		
		
		if(x1 < x2)
		    puts("#{x1},#{x2}")
            
		else
			puts("#{x2},#{x1}")
		end
		
		
		
    		
	end
	if (D == 0)
		
		x = (-b/( 2*a )).round(3)
		
		if(x == -0.0)
			puts(0.0);
			abort();
		else
			puts(x);
			abort();
		end
		
	end
	if (D < 0)
		puts("NaN")
	end
	

end
