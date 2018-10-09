content = File.read("allfiles.txt")
    content = content.split("\n")

def loop (filename)
	testove = [
		["0 0 2", "NaN"]
		["1 2 3", "NaN"]		
		["0 0 0", "*"]
		["2 0 0", "0.0"]		
		["1 2 1", "0.0"]
		["0 2 0", "0.0"]
		["5 6 1", "-0.2,-1.0"]
		["1 4 4", "-2"]
		
	];

    all_programs = content.
            map {|x| x.include?(".rb") ? x : nil }.
            compact.
            map {|x| x.split(" ")[-1]}

    
