def is_integer?(str)
  str.to_i.to_s == str
end

def is_float?(str)
  # Since the string representations of an integral number as a floating-point
  # number and as an integer are different (the latter does not contain a dot),
  # the integer test on the given string is performed first
  is_integer?(str) || str.to_f.to_s == str
end

def quadratic_equation(a, b, c)
  if a != 0
    d = b**2 - 4*a*c
    if d >= 0
      x1 = (-b + Math.sqrt(d)) / (2*a)
      x2 = (-b - Math.sqrt(d)) / (2*a)
      [x1, x2]
    else
      puts "error: quadratic equation has no real solution" 
      puts "-> #{a}x^2 + #{b}x + #{c} = 0, D = #{d} < 0"
      [nil, nil]
    end
  else
    puts "error: equation is not quadratic (a = 0)"
    [nil, nil]
  end
end

a, b, c = ARGV[0..2]
if [a, b, c].all? { |arg| is_float?(arg) }
  a, b, c = [a, b, c].map { |arg| arg.to_f }
  x1, x2 = quadratic_equation(a, b, c)
  unless x1.nil?
    puts "X1: #{x1}"
    puts "X2: #{x2}"
  end
else
  puts "error: input is not of decimal type (a = '#{a}', b = '#{b}', c = '#{c}')"
end

