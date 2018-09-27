a = Integer(ARGV[0])
b = Integer(ARGV[1])
c = Integer(ARGV[2])



if(a == 0)
	if(b!=0)
		x = -c/b;
		puts(x);
		abort();
		
	else 
		if(c!=0)
			puts("nqma reshenie");
			abort();
		
		else 
			puts("vsqko x");
			abort();
		
		end	
	end		
end

D = b*b - 4*a*c;	

if(D == 0)
		x = -b/2*a;
		puts(x);
	end
	if(D < 0)
		puts("nqma realen koren");
		
end
	
if(D > 0)

	x1 = (-b - Math.sqrt(D))/2*a;
	x2 = (-b + Math.sqrt(D))/2*a;

	puts(x1,x2);
end	
