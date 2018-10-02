a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f


def quadratic(a, b, c)
    if a == 0
        if b == 0
            puts("NaN")
        else
            x1 = (-c/b).round(3)
            puts(x1)
        end
        return
    end

    d = b*b - 4*a*c
    if d < 0
        puts("NaN")
    elsif d == 0
        x1 = (-b / 2*a).round(3)
        puts(x1);
    else
        x1 = ((-b + Math.sqrt(d))/(2*a)).round(3)
        x2 = ((-b - Math.sqrt(d))/(2*a)).round(3)
        puts(if x1 < x2 then "#{x1},#{x2}" else "#{x2},#{x1}" end)
    end
end

quadratic(a, b, c)
