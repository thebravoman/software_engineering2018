Чт 22:31
a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i


if a!=0
        D = b*b - 4*a*c

        if D < 0
                puts "There are no solutions"
        elsif D == 0
                puts "x1 = x2: #{-b/2*a}"
        else
                x1 = (-b + Math.sqrt(b*b-4*a*c)) / 2*a	
		x2 = (-b - Math.sqrt(b*b-4*a*c)) / 2*a

		puts "x1: #{x1}"
		puts "x2: #{x2}"
        end

else
        puts "It's not a quadratic equation"
end
