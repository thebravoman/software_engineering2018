a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f
d = b*b - 4*a*c
if a == 0 && b == 0 && c == 0
  puts "*"
elsif a != 0 && b == 0 && c == 0
  x = 0.0
  puts "#{x}"
elsif a != 0 && b == 0 && c !=0
  if (-c/a) > 0
    x = Math.sqrt(-c/a)
    puts "#{-(x.round(3))},#{x.round(3)}"
  else
    puts "NaN"
  end
elsif a == 0 && b != 0 && c != 0
  x = -c/b
  x = x.round(3)
  puts "#{x}"
elsif a == 0 && b != 0 && c == 0
  x = 0.0
  puts "#{x}"
elsif (a == 0 && b == 0 && c!=0) || d < 0
  puts "NaN"
else
  if d > 0
    x = (-b + Math.sqrt(d)) / (2*a)
    x = x.round(3)
    if x == -0.0
      x = 0.0
    end
    y = (-b - Math.sqrt(d)) / (2*a)
    y = y.round(3)
    if y == -0.0
      y = 0.0
    end
    if x < y
        puts "#{x},#{y}"
    else
        puts "#{y},#{x}"
    end
  else
    x = -b / 2*a
    x = x.round(3)
    puts "#{x}"
  end
end
