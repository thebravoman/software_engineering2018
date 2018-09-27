a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

if a == 0
  if b == 0
    if c == 0
      puts "Every x is solution"
    else
      puts "No solution"
    end
  else
    x = -c/b
    puts "X = #{x}"
  end
else
  d = b*b - 4*a*c
  x1 = (-b + Math.sqrt(d))/2*a
  x2 = (-b - Math.sqrt(d))/2*a
  if x1 == x2
    puts "X = #{x1}"
  else
    puts "X1 = #{x1}"
    puts "X2 = #{x2}"
  end
end
