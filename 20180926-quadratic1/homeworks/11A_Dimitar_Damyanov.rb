a=ARGV[0].to_f
b=ARGV[1].to_f
c=ARGV[2].to_f

def determinate(a,b,c)
	d=b*b-4*a*c
	case 
	when d>0 
		x1=(-b+Math.sqrt(d))/(2*a)
		x2=(-b-Math.sqrt(d))/(2*a)
		x1=x1.round(3)
		x2=x2.round(3)
		xs=[x1,x2].sort

		puts "#{xs[0]},#{xs[1]}"
	when d<0
		puts "NaN"

	when d==0
		x=-b/(2*a)
		x=x.round(3)
		puts "#{x}"
	end	
end

def find(a,b,c)

	if a==0
		if b==0
			if c==0
				puts "*"
			else 
				puts "NaN"
			end

		else
			if c==0
				puts "0.0"
			else
				x=-c/b
				puts "#{x.round(3)}"
			end
		end
	else
		if b==0
			if c==0
				puts "0.0"
			else
				if -c/a>0
				x1=Math.sqrt(-c/a).round(3)
				x2=-x1
				xs=[x1,x2].sort
				puts "#{xs[0]},#{xs[1]}"
				else
					puts "NaN"
				end
			end
		else
			if c==0
				x1=0
				x2=(-b/a).round(3)
				xs=[x1,x2].sort
				puts "#{xs[0]},#{xs[1]}"
			else 
				determinate(a,b,c)
			end
		end
	end


end


find(a,b,c)