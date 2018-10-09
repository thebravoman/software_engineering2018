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
	result = (-c/b).round(3)
	puts result < 0 ? result : result.abs
	return
end

d = b**2 - 4*a*c

if d < 0
	puts 'NaN'
	return
end

d = Math.sqrt(d)

roots = []

roots.push(((-b-d)/(2*a)).round(3))
roots.push(((-b+d)/(2*a)).round(3))
roots = roots.map{|x| x < 0 ? x : x.abs} 

if roots[0] != roots[1]
	puts "#{roots.min},#{roots.max}" 
else
	puts "#{roots[0]}"
end
