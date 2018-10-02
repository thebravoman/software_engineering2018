a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if (a == 0)

	if(b != 0)
		x = - (c/b)
		puts(x)
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
		x1 = ( -b + Math.sqrt(D) ) / (2*a);
		x2 = ( -b - Math.sqrt(D) ) / (2*a);
		
		if(x1 < x2)
		puts("#{x1},#{x2}")

		else
			puts("#{x2},#{x1}")
		end
    		
	end
	if (D == 0)
		x = -b/( 2*a )
		puts (x)
	end
	if (D < 0)
		puts("NaN")
	end
	

end
