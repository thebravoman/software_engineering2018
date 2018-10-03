content = File.read("allfiles.txt")
content = content.split("\n")
all_programs = content.
	map {|x| x.include?(".rb") ? x : nil }.
	compact.map {|x| x.split(" ")[-1]}
all_programs.each do |program|
	puts program
	result = `ruby #{program} #{ARGV[0]} #{ARGV[1]} #{ARGV[2]}`
	puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
end

def func (filename)
	test = [
		["0 0 0", "*"],
		["1 4 4", "-2.0"],
		["5 6 1", "-0.2,-1.0"],
		["0 1 3", "-3.0"],
		["0 0 1", "NaN"],
		["7 0 0", "0.0"],
		["0 9 0", "0.0"],
		["2 3 90", "NaN"]
	];
	
end
