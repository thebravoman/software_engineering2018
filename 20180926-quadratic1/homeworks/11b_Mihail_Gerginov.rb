def solve(a, b, c)
  if a == 0
    if b == 0
      if c == 0
        "*"
      else
        "NaN"
      end
    else
      (-c / b).round(3)
    end
  else
    d = b ** 2 - 4 * a * c
    if d < 0
      "NaN"
    elsif d == 0
      x = (-b / (2 * a)).round(3)
      if(x == -0.0)
        x = 0.0
      end
      x
    else
      x1 = ((-b + Math.sqrt(d)) / (2 * a)).round(3)
      x2 = ((-b - Math.sqrt(d)) / (2 * a)).round(3)
      [x1, x2].
        sort.
        join(",")
    end
  end
end

a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

puts solve(a, b, c)

