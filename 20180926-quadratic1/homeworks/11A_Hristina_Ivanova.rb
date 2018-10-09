a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
  if b == 0
    if c == 0
      puts "*"
      exit
    end
    puts "NaN"
    exit
  end
    x = (-c/b).round(3)
    puts "#{x}"
    exit
end

  d = b*b - 4*a*c

  if d < 0
    puts('NaN')
    exit
  end
  if d == 0
      x = (-b/(2*a)).round(3)
      if x == -0.0
        x = 0.0
      end
      puts "#{x}"
  end

if d > 0
  x1 = ((-b - Math.sqrt(b*b - 4*a*c))/(2*a)).round(3)
  x2 = ((-b + Math.sqrt(b*b - 4*a*c))/(2*a)).round(3)

  if(x1 < x2)
    puts "#{x1},#{x2}"
  else
    puts "#{x2},#{x1}"
  end
end
