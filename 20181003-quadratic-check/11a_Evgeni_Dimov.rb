content = File.read("allfiles.txt")
content = content.split("\n")
file_to_write = File.open("results.csv", "w")

all_programs = content.
	map {|x| x.include?(".rb") && x.include?("11") ? x : nil }.
	compact.
	map {|x| x.split(" ")[-1]}

tests = [
	[0,0,0,"*"],
	[-3,3,3,"-0.618,1.618"],
	[4,1,1,"NaN"],
	[0,0,3,"NaN"],
	[1,5,6,"-3.0,-2.0"],
	[1,-10,25,"5.0"],
	[0,3,-4,"1.333"],
	[3,3,-3,"-1.618,0.618"],
	[3,0,3,"NaN"],
	[1,0,-3.3,"-1.817,1.817"],
	[3,3,0,"-1.0,0.0"],
	[3,0,0,"0.0"]
]

all_programs.each do |program|
	legit = true

	data = program.split("_")
	classne = data[0]
	first_name = data[1]
	last_name = data[2].gsub(".rb", "")
	mizeriq = []
	tests.each do |test|
		result = `ruby #{program} #{test[0]} #{test[1]} #{test[2]}`.gsub("\n", "")
		if result != (test[3])
			mizeriq.push("test: #{test[0]} #{test[1]} #{test[2]}; your output: '#{result}'; expected output: '#{test[3]}'") 
			legit = false
		end
	end
	
	legit = legit ? 1 : 0
	file_to_write.write("#{classne},#{first_name},#{last_name},#{legit},#{mizeriq.join(",")}\n")
end

