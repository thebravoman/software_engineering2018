content = File.read("names.txt")
content = content.split("\n")

all_programs = content.
            map {|x| x.include?(".rb") ? x : nil }.
            compact.
            map {|x| x.split(" ")[-1]}

all_programs.each do |program|
            puts program
            result = `ruby homeworks/#{program} 0 5 2`
            puts (result == '-0.4') ? 1 : 0

	    result = `ruby homeworks/#{program} 2 5 2`
            puts (result == '-2.0,-0.5') ? 1 : 0

	    result = `ruby homeworks/#{program} 2 -5 12`
            puts (result == 'NaN') ? 1 : 0

	    result = `ruby homeworks/#{program} 2 0 2`
            puts (result == 'NaN') ? 1 : 0

       	    result = `ruby homeworks/#{program} 2 5 0`
            puts (result == '-2.5,0') ? 1 : 0

	    result = `ruby homeworks/#{program} 0 0 0`
            puts (result == '*') ? 1 : 0
 
	 
 end

