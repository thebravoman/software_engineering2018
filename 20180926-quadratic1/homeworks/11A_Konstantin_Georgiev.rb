a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f
d = b*b - 4*a*c


if a == 0 && b == 0 && c == 0
  puts "*"
elsif a == 0 && b == 0 && c!=0
  puts "NaN"

else
  if d > 0
    if a != 0
      puts "#{(-b + Math.sqrt(d))/2*a}, #{(-b - Math.sqrt(d))/2*a} "
    elsif a == 0 && c == 0 && b!=0
      puts "0.0"
    else
      puts "#{(-b + Math.sqrt(d))}, #{(-b - Math.sqrt(d))} "
    end
  elsif d == 0
    if a != 0
      puts "#{-b/2*a}"
    else
      puts "#{-b}"
    end
  else
    puts "NaN"
  end
end
