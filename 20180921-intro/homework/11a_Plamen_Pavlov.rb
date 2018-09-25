puts"Reshavane na kavadratno uravnenie:"
puts"ax^2 + bx + c = 0"
puts"Molq, vavedete koeficientite a, b i c"

a = ARGV[0].to_f
b = ARGV[1].to_f
c = ARGV[2].to_f

if a==0
	puts"Tova uravnenie ne e kvadratno!!!Trqbva da vavedete koeficient a razlichen ot 0"
else

	diskriminanta = ((b*b) - (4*a*c)) 
	diskriminanta = Math.sqrt(diskriminanta)
	x1 = (-b + diskriminanta) / 2*a
	x2 = (-b - diskriminanta) / 2*a

	if diskriminanta < 0
		puts"Kvadratnoto uravnenie nqma realni koreni"
	elsif diskriminanta == 0
		puts"X1 = X2 = #{x1}"
	else
		x1 = (-b + diskriminanta) / 2*a
		x2 = (-b - diskriminanta) / 2*a
		puts"X1 = #{x1} X2 = #{x2} "

	end
end
