a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a != 0
	if b != 0
		puts 'X1 = '+ -c/b
	else	
		if c != 0 
			puts "Nqma takowa /x/"	
		else
			puts "Wsqko e reshenie"
		end
	end
		
else
	d = b * b - 4 * a * c
	if d < 0
		puts "Nqma realni koreni"
	elsif d == 0
		puts "X = "+ -b / (2 * a)
	else 
		puts "X1 = "+ (-b + Math.sqrt(d)) / 2 *a
		puts "X1 = "+ (-b - Math.sqrt(d)) / 2 *a
	end
end


				

