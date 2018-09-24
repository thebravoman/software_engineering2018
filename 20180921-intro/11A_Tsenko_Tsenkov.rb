def quadratic_eq(a, b, c)
  if b**2 - (4 * a * c) < 0
      puts "Not existing roots"
  elsif b**2 - (4 * a * c) == 0
         puts "One root x = #{-b/(2 * a)}"
  else 
        puts "x1 = #{(-b + Math.sqrt(b**2 - (4 * a * c)))/(2 * a)}"
        puts "x2 = #{(-b - Math.sqrt(b**2 - (4 * a * c)))/(2 * a)}"
  end
end

quadratic_eq(ARGV[0].to_f, ARGV[1].to_f, ARGV[2].to_f)
