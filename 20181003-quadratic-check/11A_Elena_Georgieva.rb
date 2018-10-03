content = File.read("allfiles.txt")
content = content.split("\n")

all_programs = content.
	map{|x| x.include?(".rb") ? x Z: nil}.
	compact.
	map{|x| x.split(" ")[-1]}

p all_programs

all_programs.each do |program|
	puts program
	result = `ruby #{program} 3 -17 6}`
	puts (result=='0.378,5.288') ? 1 : 0
	result = `ruby #{program} 0 0 0}`
	puts (result=='0') ? 1 : 0
end
