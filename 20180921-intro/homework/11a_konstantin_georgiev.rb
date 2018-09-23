a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f
d = b*b - 4*a*c
if d > 0
  puts "x1 = #{(-b + Math.sqrt(d))/2*a}"
  puts "x2 = #{(-b - Math.sqrt(d))/2*a}"
elsif d == 0
  puts "x = #{-b/2*a}"
else
  puts "No solutions"
end
