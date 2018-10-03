content = File.read("allfiles.txt")

def check_homework filename

	# tests = [
	# 	["1 2 1", "-1.0"],
	# 	["0 0 0", "*"],
	# 	["1 3 2", "-2.0, -1.0"],
	# 	["0 1 3", "-3.0"],
	# 	["0 0 1", "NaN"],
	# 	["1 0 0", "0.0"],
	# 	["0 1 0", "0.0"],
	# 	["1 2 3", "NaN"]
	# ];

	tests = [
		["1 2 1", "-1.0"],
		["0 0 0", "*"],
		["1 3 2", "-2.0,-1.0"],
		["0 1 3", "-3.0"],
		["0 0 1", "NaN"],
		["1 0 0", "0.0"],
		["0 1 0", "0.0"],
		["1 2 3", "NaN"]
	];

	tests.each do |item|
		abc = item[0].split(" ")

		result = `ruby #{filename} #{abc[0]} #{abc[1]} #{abc[2]}`

		begin
			if Float(item[1]) != Float(result)
				puts item[1]
				puts result
				return 0
			end
		rescue
			if not item[1] == result.tr("\n", "")
				puts item[1]
				puts result
				return 0
			end
		end


		
	end

	return 1;
	
end

content = content.split("\n")

content = content.map{|x| x.include?(".rb") ? x: nil}.compact.map{|x| x.split(" ")[-1]}

content.each{|x| puts "#{x}'s homework: #{check_homework x}"}