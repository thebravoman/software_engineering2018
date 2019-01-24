a=ARGV[0].to_f
b=ARGV[1].to_f
c=ARGV[2].to_f
if a==0
	x1=x2=(-c)/b
	puts "X=#{x1}"
else
	diskriminanta=(b*b)-(4*a*c)

	if diskriminanta < 0
		puts "Nema re6enie"
	elsif diskriminanta==0
		x1=x2=(-b)/(2*a)
		puts"X1=X2=#{x1}"
	else 
		diskriminanta=Math.sqrt(diskriminanta)
		x1=(-b+diskriminanta)/(2*a)
		x2=(-b-diskriminanta)/(2*a)
		puts"X1=#{x1}"
		puts"X2=#{x2}"		
	end
end
