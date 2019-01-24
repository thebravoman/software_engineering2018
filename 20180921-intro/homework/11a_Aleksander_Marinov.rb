puts "Enter A: "
a = gets.chomp.to_f
puts "Enter B: "
b = gets.chomp.to_f
puts "Enter C: "
c = gets.chomp.to_f

if a == 0
  if b == 0
    if c == 0
      puts "Every X is solution"
    else
      puts "No solution"
    end
  else
    x = -c/b
    puts "X = #{x}"
  end
end

d = b**2 - 4*a*c

if d < 0
  puts "No solution"
elsif d == 0
  x = -b/(2*a)
  puts "X = #{x}"
elsif d > 0
  x1 = (-b + Math.sqrt(d))/2*a
  x2 = (-b - Math.sqrt(d))/2*a
  if x1 != 0 && x2 != 0
    puts "X1 = #{x1}"
    puts "X2 = #{x2}"
  end
end
