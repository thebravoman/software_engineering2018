
def solve_equation(a, b, c)
    if a == 0
        if b == 0
            if c == 0
                puts "*"
            else
                puts "NaN"
            end
        else
            x = -c/b
            puts "#{x.round(3)}"
        end
    else
        determinant = b*b - 4*a*c;
        if determinant < 0
                puts "NaN"
        elsif determinant == 0
            x = (-b / (2 * a)).round(3)
            if x == -0.0
                x = 0.0
            end
            puts "#{x}"
        else 
            x1 = (-b - Math.sqrt(determinant)) / (2*a)
            x2 = (-b + Math.sqrt(determinant)) / (2*a)
            if x2 > x1
                puts "#{x1.round(3)},#{x2.round(3)}"
            else
                puts "#{x2.round(3)},#{x1.round(3)}" 
            end
        end
    end
end


a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f
solve_equation(a, b, c)
