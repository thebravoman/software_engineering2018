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

	test.each{ |item| result = `ruby #{filename} #{item[0].split(" ")[0]} #{item[0].split(" ")[1]} #{item[0].split(" ")[2]}` == item[0][1] ? return 1 : return 0}
end
