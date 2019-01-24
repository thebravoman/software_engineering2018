e=ARGV[0]

exp=e

a_pat=/(\+?-?\d*)[a-zA-Z]\^2/
b_pat=/(\+?-?\d*)[a-zA-Z]{1}(?=[^\^]|\z)/
c_pat=/((?:\p{Sm}|\A|-)\p{N})(?=\p{Sm}|\z|-)/
par_pat=/.?(?<param>[a-zA-Z]).?/



params =exp.scan(par_pat).map(&:join).uniq
$param =nil
if params.length>1 
	puts "gre6ka"
	return
else 
	$param=params[0] 
end

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
puts "expression evaluated to :(#{$A})#{$param}^2 +(#{$B})#{$param} +(#{$C}) =0"


def determinate()
	d=$B*$B-4*$A*$C
	case 
	when d>0 
		x1=(-$B+Math.sqrt(d))/(2*$A)
		x2=(-$B-Math.sqrt(d))/(2*$A)
		puts "#{$param}1=#{x1}\n#{$param}2=#{x2}"
	when d<0
		puts "D<0 nqma re6enie"

	when d==0
		x=-$B/(2*$A)
		puts "#{$param}1=#{$param}2=#{x}"
	end	
end



if $A!=0&&$B!=0&&$C!=0
	determinate()
elsif $A==0&&$B!=0
	x=-$C/$B
	puts "#{$param}=#{x}"
elsif $C==0&&$B!=0
	x=-$B/$A
	puts "#{$param}1=0\n#{$param}2=#{x}"
elsif $B==0&&$A!=0
	s=-$C/-$A
	if s>=0
		x1=Math.sqrt(s)
		x2=-x1	
		puts "#{$param}1=#{x1}\n#{$param}2=#{x2}"
	else
		puts "otricatelen koren"
	end
elsif $B==0&&$A==0
		puts "kakvi gi v1r6i6"			
end	
