FIL = File.open(ARGV[0], "r")
FILE = FIL.read

FILE.split("\n").
map{|f| f.gsub(".rb", "")}.
map{|f| f.split("_")}.
map{|f| f[1..3]}.
map{|f| f.join(" ")}.
map{|f| puts f}
	
FIL.close
