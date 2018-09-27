a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i


d = b*b - 4*a*c

if(d<0)
	puts "Feelsbadman, it can't work"
end

if(a==0)
	x =-(c/b)
	puts x

else if(d>=0)

x1 = (-b + Math.sqrt(b*b-4*a*c)) / 2*a
x2 = (-b - Math.sqrt(b*b-4*a*c)) / 2*a

puts x1
puts x2
puts "Mitov e bog"

end

end
