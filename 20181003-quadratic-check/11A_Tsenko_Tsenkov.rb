content = File.read("allfiles.txt")
content = content.split("\n")

all_programs = content.
        map {|x| x.include?(".rb") ? x : nil }.
        compact.
        map {|x| x.split(" ")[-1]}

all_programs.each do |program|
        puts program
        #result = `ruby #{program} #{1} #{3} #{2}`
        #puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
	#result = `ruby #{program} #{0} #{0} #{0}`
        #puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
	#result = `ruby #{program} #{8} #{1} #{2}`
        #puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
	#result = `ruby #{program} #{1} #{2} #{1}`
        #puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
	#result = `ruby #{program} #{0} #{5} #{0}`
        #puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
	#result = `ruby #{program} #{1} #{5} #{0}`
        #puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
	#result = `ruby #{program} #{0} #{0} #{1}`
        #puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
	#result = `ruby #{program} #{-5} #{9} #{-1}`
        #puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
end






#i = 0
#begin
	
	#i +=1
#end while i < i

