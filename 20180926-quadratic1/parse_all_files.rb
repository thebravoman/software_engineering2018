content = File.read("allfiles.txt")
content = content.split("\n")
file_to_write = File.open("results.csv", "w")

content.
	map {|x| x.include?(".rb") ? x : nil }.
	compact.
	map {|x| x.split(" ")[-1]}.
	each do |x|
		file_to_write.write(x.gsub(".rb", "").split("_").join(",")+"\n")
	end

file_to_write.close


