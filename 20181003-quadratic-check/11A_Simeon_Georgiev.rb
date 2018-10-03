content = File.read("allfiles.txt")
content = content.split("\n")
file_to_write = File.open("results.csv", "w")

listOfNames = []
listOfResults = []
listOfChecks = []

i=0
j=0

check = [["0", "0", "0"], ["0", "0", "5"], ["1", "2", "1"], ["2" , "5", "2"]]
check_trusted = ["*", "NaN","-1.0", "-2.0,-0.5"]

all_programs = content.
	map {|x| x.include?(".rb") ? x : nil }.
	compact.
	map {|x| x.split(" ")[-1]}.
	each do |x|
		listOfNames.push(x)
	end

all_programs.each do |program|
		loop do 
			listOfResults[i] = `ruby #{program} #{check[j]}`
			j+=1
			listOfChecks[i] = listOfResults[i][j].include?(check_trusted[j]) ? listOfResults[i][j] : nil
			break if j==5		
		end	
	puts all_programs
	#//listOfResults.push(result)
end
