a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if (a == 0 && b == 0 && c == 0)
  puts "*"
elsif (a == 0 && b == 0)
  puts "NaN"
elsif (b == 0 && c == 0) || (a == 0 && c == 0)
  puts "0.0"
elsif a == 0
  x = (-c / b).round(3)
  puts "#{x}"
else
  d = b*b - 4*a*c

  if (d > 0)
    x1 = ((-b + Math.sqrt(d)) / (2*a)).round(3)
    x2 = ((-b - Math.sqrt(d)) / (2*a)).round(3)

    #in case x2 or x1 is -0
    if x1 == 0
        x1 = 0.0
    end
    if x2 == 0
        x2 = 0.0
    end

    if x1 < x2
        puts "#{x1},#{x2}"
    elsif x2 < x1
        puts "#{x2},#{x1}"
    end
  elsif (d == 0)
    x = (-b / (2*a)).round(3)

    puts "#{x}"
  else
    puts "NaN"
  end
end
