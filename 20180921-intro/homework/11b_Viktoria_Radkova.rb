a=ARGV[0].to_i
b=ARGV[1].to_i
c=ARGV[2].to_i

#a=1
#b=-5
#c=4

if a==0

    x=-(c/b)
    
    puts x

else
    if b*b-4*a*c>0

        x1 = (-b+Math.sqrt(b*b-4*a*c))/2*a
        x2 = (-b-Math.sqrt(b*b-4*a*c))/2*a

        puts x1
        puts x2
        end

    if b*b-4*a*c<0

        puts "There is no x for you :)"
        end

end
