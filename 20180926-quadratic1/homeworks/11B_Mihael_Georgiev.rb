if(ARGV.length != 3)
        abort("Use [program_name] [a] [b] [c] in order to use the program.")
end

a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a != 0
        d = b*b-4*a*c

        if d < 0
                puts "NaN"
        elsif d == 0
                if -b/(2*a) == 0
                        puts"0.0"
                else
                        puts "#{(-b/(2*a)).round(3)}"
                end
        else
                x1 = ((-b + Math.sqrt(d)) / (2*a)).round(3)
                x2 = ((-b - Math.sqrt(d)) / (2*a)).round(3)
                if x1 == -0.0
                        x1 = 0.0
                end
                if x2 == -0.0
                        x2 = 0.0
                end
                if x1 < x2
                        puts "#{x1},#{x2}"
                else
                        puts "#{x2},#{x1}"
                end
        end
else
        if b == 0
                if c == 0
                        puts "*"
                else
                        puts "NaN"
                end
        else
                x = (-c/b).round(3)
                if x == 0
			puts"0.0"
		else
			puts "#{x}"
        	end
	end
end
