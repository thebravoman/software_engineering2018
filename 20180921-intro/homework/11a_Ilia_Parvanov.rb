a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if (a == 0 && b == 0 && c == 0)
  puts "Vsqko x e reshenie"
elsif (a == 0)
  x = -c / b

  puts "x = #{x}"
else
  d = b*b - 4*a*c

  if (d > 0)
    x1 = (-b + Math.sqrt(d)) / (2*a)
    x2 = (-b - Math.sqrt(d)) / (2*a)

    puts "x1 = #{x1}, x2 = #{x2}"
  elsif (d == 0)
    x = (-b / (2*a))

    puts "x = #{x}"
  else
    puts "Nqma realni koreni"
  end
end
