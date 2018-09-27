a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

D = b*b - 4*a*c

if a == 0
        puts "a cannot be 0"

elsif D < 0
        puts "No real number solutions"

else
        puts "x1 = #{(- b + Math.sqrt(D))/ 2 * a}"
        puts "x2 = #{(- b - Math.sqrt(D))/ 2 * a}"
end
