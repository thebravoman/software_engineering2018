a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f


if a == 0 && b == 0 && c == 0

	puts"*"
	
elsif a == 0

    x = (-c/b).round(3)
   
    puts "#{x}"
   
else
   
    dis = b*b - 4*a*c
   
    if dis < 0
       
        puts "NaN"
 
    elsif dis == 0
   
        x = ((-b) / 2*a).round(3)
       
        puts "#{x}"
 
    else
 
        x1 = ((-b + Math.sqrt(dis)) / (2*a)).round(3)
        x2 = ((-b - Math.sqrt(dis)) / (2*a)).round(3)
 		
 		if x1 < x2

        	puts "#{x1},#{x2}"
   		
   		else

   			puts "#{x2},#{x1}"

   		end	
    end
 
end