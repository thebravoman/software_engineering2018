def quadratic_eq(a, b, c)
  discriminant = b**2 - (4 * a * c) 

  if discriminant < 0
      puts "Not existing roots"
  elsif discriminant == 0
         puts "One root x = #{-b/(2 * a)}"
  else 
        puts "x1 = #{(-b + Math.sqrt(discriminant))/(2 * a)}"
        puts "x2 = #{(-b - Math.sqrt(discriminant))/(2 * a)}"
  end
end

quadratic_eq(ARGV[0].to_f, ARGV[1].to_f, ARGV[2].to_f)
