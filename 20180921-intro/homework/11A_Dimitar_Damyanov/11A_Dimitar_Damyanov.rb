e=ARGV[0]

exp=e
#exp="2x^2+4x"
#pat=/(?<a>[[:punct:]]?\d*)x\^2(?<b>[[:punct:]]?\d*)x(?<c>[[:punct:]]?\d*)/
#pat=/(?<a>[[:punct:]]?\d*)?(?<ax>x\^2)?(?<b>[[:punct:]]?\d*)?(?<bx>x)?(?<c>[[:punct:]]?\d*)/
#pat=/(?<ax>(?<a>[[:punct:]]?\d*)x\^2)?(?<bx>(?<b>[[:punct:]]?\d*)x)?(?<c>[[:punct:]]?\d*)?=?(?<ax2>(?<a2>[[:punct:]]?\d*)x\^2)?(?<bx2>(?<b2>[[:punct:]]?\d*)x)?(?<c2>[[:punct:]]?\d*)?/
a_pat=/(\+?-?\d*)x\^2/
b_pat=/(\+?-?\d*)x(?=[^\^]|\z)/
c_pat=/((?:\p{Sm}|\A|-)\p{N})(?=\p{Sm}|\z|-)/

a_arr=exp.scan(a_pat).map(&:join)
b_arr=exp.scan(b_pat).map(&:join)
c_arr=exp.scan(c_pat).map(&:join)

a_pos= exp.enum_for(:scan, a_pat).map { Regexp.last_match.begin(0) }
b_pos= exp.enum_for(:scan, b_pat).map { Regexp.last_match.begin(0) }
c_pos= exp.enum_for(:scan, c_pat).map { Regexp.last_match.begin(0) }
eq_pos= exp.enum_for(:scan, /=/).map { Regexp.last_match.begin(0) }

a_hash= Hash[a_arr.zip a_pos]
b_hash= Hash[b_arr.zip b_pos]
c_hash= Hash[c_arr.zip c_pos]


#puts eq_pos
#puts a_hash
#puts b_hash
#puts c_hash

#puts "a arr:#{a_arr}"
#puts "b arr:#{b_arr}"
#puts "c arr:#{c_arr}"
$A=0
$B=0
$C=0

def assign(n_hash,eqs)

	mult=1
	res=0
	n_hash.each{|key, val| 
		
		if key.include?"="
			key=key.gsub(/=/," ")
			
		end	
		if key==""||key=="+"||key=="-"
			key=key+"1"
		end
		if eqs[0]!=nil
			if val>=eqs[0]
				mult=-1
			end
		end
		res+=(key.to_f*mult)
		
	}
	
	return res
end	

$A=assign(a_hash,eq_pos)
$B=assign(b_hash,eq_pos)
$C=assign(c_hash,eq_pos)
puts "expression evaluated to :(#{$A})x^2 +(#{$B})x +(#{$C}) =0"


def determinate()
	d=$B*$B-4*$A*$C
	case 
	when d>0 
		x1=(-$B+Math.sqrt(d))/(2*$A)
		x2=(-$B-Math.sqrt(d))/(2*$A)
		puts "x1=#{x1}\nx2=#{x2}"
	when d<0
		puts "D<0"

	when d==0
		x=-$B/(2*$A)
		puts "x1=x2=#{x}"
	end	
end



if $A!=0&&$B!=0&&$C!=0
	determinate()
elsif $A==0&&$B!=0
	x=-$C/$B
	puts "x=#{x}"
elsif $C==0&&$B!=0
	x=-$B/-$A
	puts "x1=0\nx2=#{x}"
elsif $B==0&&$A!=0
	s=-$C/-$A
	if s>=0
		x1=Math.sqrt(s)
		x2=-x1	
		puts "x1=#{x1}\nx2=#{x2}"
	else
		puts "otricatelen koren"
	end
elsif $B==0&&$A==0
		puts "kakvi gi v1r6i6"			
end	
