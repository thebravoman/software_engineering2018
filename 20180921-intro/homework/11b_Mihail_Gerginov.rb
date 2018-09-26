# Author: Mihail Gerginov, XIb, No. 19

a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
  if b == 0
    if c == 0
      puts "Every value of x is a solution."
    else
      puts "There are no solutions to this equation."
    end
  else
    x = -c / b
    puts "x = #{x}"
  end
else
  d = b ** 2 - 4 * a * c;
  if d < 0
    puts "There are no real solutions to this equation."
  elsif d == 0
    x = -b / (2 * a)
    puts "x = #{x}"
  else
    x1 = (-b + Math.sqrt(d)) / 2 * a
    x2 = (-b - Math.sqrt(d)) / 2 * a

    puts "x1 = #{x1}"
    puts "x2 = #{x2}"
  end
end

