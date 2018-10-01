a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
	if b == 0
		if c == 0
			puts '*'
			return
		end
		puts 'NaN'
		return
	end
	puts (-c/b).round(3)
	return
end

d = b**2 - 4*a*c

if d < 0
	puts 'NaN'
	return
end

d = Math.sqrt(d)

print "#{((-b-d)/(2*a)).round(3)}"
if d > 0
	print ",#{((-b+d)/(2*a)).round(3)}"
end
puts