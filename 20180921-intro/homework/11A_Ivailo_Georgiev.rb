a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f
 
if a == 0
   
    puts "The equation is not quadratic"
   
    x = -c/b
   
    puts "x = #{x}"
   
else
   
    dis = b*b - 4*a*c
   
    if dis < 0
       
        puts "no solution"
 
    elsif dis == 0
   
        x = (-b) / 2*a
       
        puts "X = #{x}"
 
    else
 
        x1 = (-b + Math.sqrt(dis)) / (2*a)
        x2 = (-b - Math.sqrt(dis)) / (2*a)
 
        puts "X1 = #{x1}"
        puts "X2 = #{x2}"
   
    end
 
end
