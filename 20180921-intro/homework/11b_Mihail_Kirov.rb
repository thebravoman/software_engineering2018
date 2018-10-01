
def solve_equation(a, b, c)
    if a == 0
        puts "not a quadratic equation"
        return [nil, nil]
    else
        determinant = b*b - 4*a*c;
        if determinant < 0
            puts "no solutions in the real number plane"
            return [nil, nil]
        else
            x1 = (-b - Math.sqrt(determinant)) / 2*a
            x2 = (-b + Math.sqrt(determinant)) / 2*a
            return [x1, x2]
        end
    end
end


a = ARGV[0].to_i
b = ARGV[1].to_i
c = ARGV[2].to_i

x1, x2 = solve_equation(a, b, c)
if x1 and x2
    puts "x1: #{x1} x2: #{x2}"
end