
a = ARGV[0].to_f;
b = ARGV[1].to_f;
c = ARGV[2].to_f;

d = b*b - 4*a*c;


unless a == 0
	if d>0
		x1 = ((-b + Math.sqrt(d))/(2*a)).round(3);
		x2 = ((-b - Math.sqrt(d))/(2*a)).round(3);

		puts "#{x1},#{x2}"
		

	elsif d==0
		x1 = ((-b)/(2*a)).round(3);
		puts "#{x1}"
	
	elsif d < 0
		puts "NaN" 
	end

else
	unless b == 0
		x = (-c/b).round(3);
		puts "#{x}"
	else
		unless c == 0
			puts "NaN"
		else
			puts "*"
		end
	end
end
	
