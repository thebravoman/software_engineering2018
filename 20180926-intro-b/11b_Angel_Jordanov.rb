# Quadratic equation solver.

A = ARGV[0].to_i
B = ARGV[1].to_i
C = ARGV[2].to_i

D = B ** 2 - 4*A*C

if (D == 0)
   puts 'x = '+(-B/2/A).to_s
else
   if (D > 0)
      puts 'x1 = '+((-B-Math.sqrt(D))/2*A).to_s
      puts 'x2 = '+((-B+Math.sqrt(D))/2*A).to_s
	else 
		puts 'Nqma realni koreni sori motori...'
end
