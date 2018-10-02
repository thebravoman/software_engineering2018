a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	if b == 0
		puts("NaN")	
	else
		puts(-b/c)	
	end
else
	d = b*b - 4*a*c
	if d < 0
		puts("NaN")	
	elsif d == 0
		puts(-b/(2*a))	
	else
		x1 = ((-b + Math.sqrt(d))/(2*a)).round(3)		
		x2 = ((-b - Math.sqrt(d))/(2*a)).round(3)
		puts(if x1 < x2 then "#{x1},#{x2}" else "#{x2},#{x1}" end)
	end
end
