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
		x=-b/(2*a).round(3)
		x=x.round(3)
		puts "#{x}"
	end	
end

def find(a,b,c)

	if a==0&&b==0&&c==0
		puts "*"
	elsif a!=0&&b!=0&&c!=0
		determinate(a,b,c)
	elsif a==0
		x=-c/b
		puts "#{x.round(3)}"
				
	else
		puts "NaN"	
	end


end


find(a,b,c)