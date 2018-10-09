content = File.read("allfiles.txt")
content = content.split("\n")

all_programs = content.
	map {|x| x.include?(".rb") ? x : nil }.
	compact.
	map {|x| x.split(" ")[-1]}

all_programs.each do |program|
	puts program
	i = 0
	result = `ruby #{program} #{ARGV[0]} #{ARGV[1]} #{ARGV[2]}`
	puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
end
