$a = ARGV[0].to_i
$b = ARGV[1].to_i
c = ARGV[2].to_i
def calc(d)
	return (-$b + d) / 2*($a)
end
d = Math.sqrt($b*$b-4*$a*c)
p "X1: #{calc(d)}"
p "X2: #{calc(-d)}"
