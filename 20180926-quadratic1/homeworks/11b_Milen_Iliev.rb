a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a == 0
    if b!= 0
        x = (-c/b).round(3)
        puts x
    else
        if c != 0
            puts "NaN"
        else
            puts "*"
        end
    end
else
    d = b*b - 4*a*c
    if d > 0
        x1 = ((-b + Math.sqrt(d))/(2*a)).round(3)
        x2 = ((-b - Math.sqrt(d))/(2*a)).round(3)
        if x1 > x2
            puts "#{x2},#{x1}"
        else
            puts "#{x1},#{x2}"
        end
    else
        if d == 0
            x = (-b/(2*a)).round(3)
            puts x
        else
            puts "NaN"
        end
    end
end
