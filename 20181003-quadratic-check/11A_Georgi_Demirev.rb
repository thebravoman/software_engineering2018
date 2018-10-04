file = File.read("allfiles.txt")
book = File.open("dnevnik.csv", "w")
file = file.split("\n")
namesOfFiles = []
results = []
checks = [["0", "0", "0"], ["2", "5", "2"], ["1", "5", "20"], ["1", "2", "1"], ["0", "5", "2"], ["0", "0", "2"], ["0", "5", "0"], ["2", "5", "0"], ["17", "-158", "27"]]
checksVal = {
	checks[0] => "*",
	checks[1] => "-2.0,-0.5",
	checks[2] => "NaN",
	checks[3] => "-1.0",
	checks[4] => "-0.4",
	checks[5] => "NaN",
	checks[6] => "0.0",
	checks[7] => "-2.5,0.0",
	checks[8] => "0.174,9.12"
}

i = 0

file = file.map { |x| x.include?(".rb") && x.include?("11") ? x : nil}.
	compact.
	map { |x| x.split(" ")[-1]}.
	each do |x|
		namesOfFiles.push(x)
	end.
	each do |program|
		i = 0
		correct = 0
		loop do 
			result = `ruby #{program} #{checks[i][0]} #{checks[i][1]} #{checks[i][2]}`
			result = result.gsub("\n", "")

			if result.eql?(checksVal[checks[i]])
				correct = 1
			else
				correct = 0
				break
			end
			i += 1
			break if i == 9

		end
		if correct == 1
			results.push(1)
		else
			results.push(0)
		end
		puts program, correct

	end.
	map {|x| x.split("_").join(",").gsub(".rb", "")}.
	each_with_index do |x, index|
		book.write(x + "," + String(results[index]) +"\n")
	end

