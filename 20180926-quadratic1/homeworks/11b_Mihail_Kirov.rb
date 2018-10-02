
def solve_equation(a, b, c)
    if a == 0
        if b == 0
            if c == 0
                puts "*"
            else
                puts "NaN"
            end
        else
            x = c/b
            puts sprintf("%.3f", x)
        end
    else
        determinant = b*b - 4*a*c;
        if determinant < 0
                puts "NaN"
        elsif determinant == 0
            x = -b / 2 * a
            puts sprintf("%.3f", x)
        else 
            x1 = (-b - Math.sqrt(determinant)) / (2*a)
            x2 = (-b + Math.sqrt(determinant)) / (2*a)
            if x2 > x1
                puts sprintf("%.3f", x1) + "," + sprintf("%.3f", x2)
            else
                puts sprintf("%.3f", x2) + "," + sprintf("%.3f", x1) 
            end
        end
    end
end


a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f
solve_equation(a, b, c)
