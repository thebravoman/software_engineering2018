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
		puts x
end




else if(d>0)

x1 = (-b + Math.sqrt(b*b-4*a*c)) / 2*a
x2 = (-b - Math.sqrt(b*b-4*a*c)) / 2*a

puts x1.round(3)
puts x2.round(3)
#puts "Mitov e bog"

end

end
