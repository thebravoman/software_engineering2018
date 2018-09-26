def getRoots(a, b, c)
    a = ARGV[0].to_i
    b = ARGV[1].to_i
    c = ARGV[2].to_i
    D = Math.sqrt(b*b - 4*a*c)
    if D < 0 
        puts "no sollution in the real number plane"
    else    
        x1 =  (-b + D) / 2*a
        x2 =  (-b - D) / 2*a
        puts "x1: #{x1}"
        puts "x2: #{x2}"
    end
    return