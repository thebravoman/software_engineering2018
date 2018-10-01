def quadratic_eq a, b, c
  discriminant = b**2 - (4 * a * c) 

  if discriminant < 0
      puts "NaN"
  elsif a==0 && b==0 && c==0
	puts "*"
  elsif discriminant == 0
         puts "#{(-b/(2 * a)).round(3)}"
  elsif a==0
	puts "#{(-c/b).round(3)}"
  else 
        x1 = ((-b + Math.sqrt(discriminant))/(2 * a)).round(3)
	    x2 = ((-b - Math.sqrt(discriminant))/(2 * a)).round(3)

        if x1>x2
		puts "#{x2},#{x1}"
	
	else
		puts "#{x1},#{x2}"
	end
  end
end

quadratic_eq(ARGV[0].to_f, ARGV[1].to_f, ARGV[2].to_f)
