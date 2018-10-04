a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
    if b == 0
        puts("NaN")
    elsif c == 0
        puts(0);
    else
        x1 = (-c/b).round(3)
        puts(x1)
    end
    abort
end

d = b*b - 4*a*c
if d < 0
    puts("NaN")
elsif d == 0
    x1 = (-b / (2*a)).round(3).to_s
    puts(x1.match(/-?0.0/) ? 0 : x1)
else
    x1 = ((-b + Math.sqrt(d))/(2*a)).round(3)
    x2 = ((-b - Math.sqrt(d))/(2*a)).round(3)
    puts(x1 > x2 ? puts("#{x2},#{x1}") : puts("#{x1},#{x2}"))
end
