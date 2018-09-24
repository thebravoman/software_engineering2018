puts "Napi6i 3-te koeficienta"
a=ARGV[0].to_i
b=ARGV[1].to_i
c=ARGV[2].to_i
diskriminanta=b*b-(4*a*c)
Math.sqrt(diskriminanta)

x1=(-b+diskriminanta)/2*a
x2=(-b+diskriminanta)/2*a

puts "X1:#{x1}"
puts "X2:#{x2}"
