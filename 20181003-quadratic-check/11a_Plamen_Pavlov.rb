content = File.read("allfiles.txt")
content = content.split("\n")

all_programs = content.
	map {|x| x.include?(".rb") ? x : nil }.
	compact.          
	map {|x| x.split(" ")[-1]}

all_programs.each do |program|
	puts program
	result = `ruby #{program} #{ARGV[0]} #{ARGV[1]} #{ARGV[2]}`
	puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
end


def proverka_na_domashno(filename)
	proverka = [
		["1 2 1", "0.0"],
		["0 0 0", "*"],
		["1 3 2", "-2.0, -1.0"],
		["0 3 -5", "1.667"],
		["0 0 -90", "NaN"],
		["0 2 0", "0.0"],
		["0 1 0", "0.0"],
		["1 2 3", "NaN"],
		["1 4 3","-3.0, -1.0"]
	];	
	proverka.each{}
	command = `ruby #{filename} `
	proverka.each{ |element| result = `ruby #{filename} #{element[0].split(" ")[0]} #{element[0].split(" ")[1]} #{element[0].split(" ")[2]}` == item[0][1] ? 1 : 0}
end
#ne e dovarshena, abe kolkot da ima 
