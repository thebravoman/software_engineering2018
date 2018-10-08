a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

d = b*b - 4*a*c

if(d<0)
        puts "NaN"
end

if(a==0)
        if(b ==0 && c == 0)
                puts "*"
        else
                x =-(c/b)
                puts x.round(3)
end




else if(d>0)

x1 = (-b + Math.sqrt(b*b-4*a*c)) /(2*a)
x2 = (-b - Math.sqrt(b*b-4*a*c)) / (2*a)


if(x1>x2)
	print "#{x1.round(3)}"
	print ",#{x2.round(3)}"
else
	print "#{x2.round(3)}"
	printf ",#{x1.round(3)}"

end 
end

end
