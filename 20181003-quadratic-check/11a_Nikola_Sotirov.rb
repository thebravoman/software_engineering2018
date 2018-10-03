content = File.read("allfiles_Nikola_Sotirov.txt")

content = content.split("\n")

content.map{|x| x.include?(".rb") ? x: nil}.compact.map{|x| x.split(" ")[-1]}

content.map{}

def check_homework filename

	tests = [
		["1 2 1", "0.0"],
		["0 0 0", "*"],
		["1 3 2", "-2.0, -1.0"],
		["0 1 3", "-3.0"],
		["0 0 1", "NaN"],
		["1 0 0", "0.0"],
		["0 1 0", "0.0"],
		["1 2 3", "NaN"]
	];

	test.each{}
	command = `ruby #{filename} `
end
