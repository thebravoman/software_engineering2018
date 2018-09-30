def quadratic_equation(a, b, c)
  if a != 0
    d = b**2 - 4*a*c
    if d >= 0
      x1 = (-b - Math.sqrt(d)) / (2*a)
      x2 = (-b + Math.sqrt(d)) / (2*a)
      [x1, x2]
    else  # there are no real solutions
      [nil, nil]
    end
  elsif b != 0
    x = -c / b
    [x, x]
  elsif c != 0
    [nil, nil]
  else  # every number is a solution
    [Float::INFINITY, Float::INFINITY]
  end
end

a, b, c = ARGV[0..2].map { |arg| arg.to_f }
x1, x2 = quadratic_equation(a, b, c)
if x1.nil?  # there are no solutions
  puts 'NaN'
elsif x1 == x2
  # there is only one solution or every number is a solution
  puts x1 == Float::INFINITY ? '*' : x1.round(3)
else
  puts "#{x1.round(3)},#{x2.round(3)}"
end

