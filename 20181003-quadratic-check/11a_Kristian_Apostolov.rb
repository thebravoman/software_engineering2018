contents = File.read("allfiles.txt")
contents.split("\n")

programs = contents.map {|x| x.include?(".rb") ? x : nil}
		.compact
		.map {|x| x.split(" ")[-1]}

patterns = [[0, 0, 0], [0, 0, 1], [0, 1, 0], [0, 1, 1],
	    [1, 0, 0], [1, 0, 1], [1, 1, 0], [1, 1, 1]]

patterns.map {|x| [x[0]*Random.rand(10), x[1]*Random.rand(10), x[2]*Random.rand(10)]}

out_file = File.new("results.csv", "w")

programs.each do |program|
	puts(program)	
	mark = 1
	patterns.each do |pattern|
		a = pattern[0]
		b = pattern[1]
		c = pattern[2]
		
		result = `ruby ../20180926-quadratic1/homeworks/11A_Kristian_Apostolov.rb #{a} #{b} #{c}`
		ret = `ruby #{program} #{a} #{b} #{c}`	

		if result != ret
			mark = 0			
			break
		end
	end		

	info = program.split("_")
	info.insert(-1, mark).join(",")
	resultFile.puts(info)
end

resultFile.close
