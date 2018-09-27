a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if a != 0
        x1 = (-b + Math.sqrt(b*b-4*a*c))/2*a
        x2 = (-b - Math.sqrt(b*b-4*a*c))/2*a

   if b*b-4*a*c<0
        puts "everything is a solution"
   elsif b*b-4*a*c==0
        puts "x1 and x2: #{x1}"
   else
        puts "x1:#{x1}"
        puts "x2:#{x2}"
   end
else
   puts "gimme another vlue for a "
end


