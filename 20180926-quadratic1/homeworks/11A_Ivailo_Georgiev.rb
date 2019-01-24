a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f


if a == 0 && b == 0 && c == 0

	puts"*"
	
elsif a == 0 and b!=0

    x = (-c/b).round(3)
   
    if x == -0.0
        puts "0.0"
       else
        puts "#{x}"
      end
   
else
   
    dis = b*b - 4*a*c
   
    if dis<0 or (a==0 and b==0)
       
        puts "NaN"
 
    elsif dis == 0 && a!=0
   
        x = ((-b) / 2*a).round(3)
       if x == -0.0
        puts "0.0"
       else
        puts "#{x}"
      end
      
    else
 
        x1 = (-b + Math.sqrt(dis)) / (2*a)
        x2 = (-b - Math.sqrt(dis)) / (2*a)
 		
 		if x1 < x2

        	puts "#{x1.round(3)},#{x2.round(3)}"
   		
   		else

   			puts "#{x2.round(3)},#{x1.round(3)}"

   		end	
    end
 
end