content = File.read("allfiles.txt")
content = content.split("\n")
checks = [[0, 0, 0], [0, 1, 0], [0, 0, 1], [1, 0, 0], [0, 1, 1], [1, 0, -1], [1, 1, 0], [1, 2, -3]]
results = [['*', '*'], [0, 0], ['NaN', 'NaN'], [0, 0], [-1, -1], [1, 1], [0, -1], [1, -3]]
file_to_write = File.open("results.csv", "w")

all_programs = content.
	map {|x| x.include?(".rb") ? x : nil }
	compact.
	map {|x| x.split(" ")[-1]}

all_programs.each do |program|
	puts program
	i = 0
	while(i < 8)
		result = `ruby #{program} #{checks[i][0]} #{checks[i][1]} #{checks[i][2]}`
    result_of_checked_program = result.include?(results[i][0]) && result.include?(results[i][1]) ? 1 : 0
    file_to_write.write(program.gsub(".rb", "").split("_").join(",") + result_of_checked_program.to_s + "\n")
		i += 1
	end
end
