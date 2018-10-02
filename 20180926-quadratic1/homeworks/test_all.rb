trusted_script = ARGV[0]

output_location = ARGV[1]
if not ARGV[1]
	output_location = "tests"
end

tries = 50
if ARGV[2]
	tries = ARGV[2]
end


files = Dir.entries(".")
files = files.select {|file| file.include?(".rb") and file.split("_").length == 3}
files = files.sort { |a, b| (b.downcase) <=> (a.downcase) }.reverse

output_file = open("#{output_location}.csv", "w")
output_file.puts("Name,State,Test Output, Test count: #{tries}\n")

files.each do |file|
	puts "Testing #{file} to #{trusted_script}"
	output = `ruby test_homework.rb #{file} #{trusted_script} #{tries}`
	puts output

	
	first_name = file.split("_")[1].capitalize
	last_name = file.split("_")[2].capitalize.gsub(".rb", "")
	passed = output.include?("One of the programs gives different output...") ? "Failed!" : "Passed!"
	output = output.gsub("\n", "\t")	

	output_file.puts("#{first_name}#{last_name},#{passed},#{output}\n\n")
end

output_file.close()