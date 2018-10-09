

content = File.read("allfiles.txt")
content = content.split("\n")

all_programs = content.
	map {|x| x.include?(".rb") ? x : nil }.
	compact.
	map {|x| x.split(" ")[-1]}

all_programs.each do |program|
	puts program
	result = `ruby #{program} 17 -158 27`
	puts (result=='0.174,9.12') ? 1 : 0

	result = `ruby #{program} 0 0 0`
	puts (result=='*') ? 1 : 0

	result = `ruby #{program} 2 4 2`
	puts (result=='1') ? 1 : 0

	result = `ruby #{program} 0 6 14`
	puts (result=='-2.333') ? 1 : 0
	
	result = `ruby #{program} 2 4 0`
	puts (result=='-2,0') ? 1 : 0

	result = `ruby #{program} 1 0 9`
	puts (result=='-3,3') ? 1 : 0

	result = `ruby #{program} 1 4 8`
	puts (result=='NaN') ? 1 : 0

	result = `ruby #{program} 0 3 0`
	puts (result=='Nan') ? 1 : 0
	
	result = `ruby #{program} 0 0 4`
	puts (result=='Nan') ? 1 : 0

	result = `ruby #{program} 5 0 0`
	puts (result=='Nan') ? 1 : 0
end
