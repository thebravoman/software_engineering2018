
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
            puts "#{x}"
        end
    else
        determinant = b*b - 4*a*c;
        if determinant < 0
                puts "NaN"
        elsif determinant == 0
            x = -b / 2 * a
            puts "#{x}"
        else 
            x1 = (-b - Math.sqrt(determinant)) / 2*a
            x2 = (-b + Math.sqrt(determinant)) / 2*a
            puts "#{x1},#{x2}"
        end
    end
end


a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i
solve_equation(a, b, c)
