a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
  x = -c/b
  puts("x = #{x}")
else
  d = b*b - 4*a*c

  if d < 0
    d *= -1
    x1 = "(#{-b} + #{Math.sqrt(d).round(2)}*i)/#{2*a}"
    x2 = "(#{-b} - #{Math.sqrt(d).round(2)}*i)/#{2*a}"
    puts("x1 = #{x1}\nx2 = #{x2}")
  else
    x1 = ((-b + Math.sqrt(d))/2*a).round(2).to_s
    x2 = ((-b - Math.sqrt(d))/2*a).round(2).to_s
    puts("x1 = #{x1}\nx2 = #{x2}")
  end
end
