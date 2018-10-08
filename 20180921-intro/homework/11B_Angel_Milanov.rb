a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f
d = b*b-4*a*c

if a==0
    if b!=0
        x=-c/b
            puts "x: #{x}"
    else
        if c!=0
            puts "no solution"
        else
            puts "every x"
        end
    end


elsif d==0 
    x= (-b)/2*a
    puts "x: #{x}"

elsif d<0
    puts "no solution"


elsif d>0
    x1= (-b+Math.sqrt(b*b-4*a*c))/2*a
    x2= (-b-Math.sqrt(b*b-4*a*c))/2*a
    puts "x1: #{x1}"
    puts "x2: #{x2}"
end

