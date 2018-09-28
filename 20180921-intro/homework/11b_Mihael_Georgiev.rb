a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if a != 0
        d = b*b-4*a*c

        if d < 0
                puts "quadratic equation has no real roots"
        elsif d == 0
                puts "x1 and x2: #{-b/2.a}"
        else
                puts "x1: #{(-b + Math.sqrt(d)) / 2*a}"
                puts "x2: #{(-b - Math.sqrt(d)) / 2*a}"
        end
else
        puts "Not a quadratic equation"
end
