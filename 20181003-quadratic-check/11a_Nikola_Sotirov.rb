content = `ls -l`

def check_homework filename
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

		# begin
		# 	if Float(item[1]) != Float(result)
		# 		puts filename
		# 		puts "Expected: #{item[1]}, got: #{result}"
		# 		return 0
		# 	end
		# rescue
		if not String(item[1]) == String(result.sub("\n", ""))
			puts filename
			puts "Expected: #{item[1]}, got: #{result}"

			return 0
		end
		# end
	end

	return 1;
	
end

content = content.split("\n")

content = content.map{|x| x.include?(".rb") && x.include?("11") ? x: nil}.compact.map{|x| x.split(" ")[-1]}

file_to_write = File.open("test_results.csv", "a")

content.each do |x|
	t = Thread.new{
		file_to_write.write("#{x.sub(".rb", "")}, #{check_homework x}\n")
	}

	t.abort_on_exception = true

	t.join()
end

file_to_write.close()