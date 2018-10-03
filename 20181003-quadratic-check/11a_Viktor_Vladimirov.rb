content = File.read("allfiles.txt")
content = content.split("\n")

all_programs = content.
    map {|x| x.include?(".rb") ? x : nil }.
    compact.
    map {|x| x.split(" ")[-1]}

tests = [
        ["1 2 1", "0.0, 0.0"],
        ["0 0 0", "*, *"],
        ["1 3 2", "-2.0, -1.0"],
        ["0 1 3", "-3.0, -3.0"],
        ["0 0 1", "NaN, NaN"],
        ["1 0 0", "0.0, 0.0"],
        ["0 1 0", "0.0, 0.0"],
        ["1 2 3", "NaN, NaN"]
];

all_programs.each do |program|
    puts program
    result = `ruby #{program} #{tests[0].split(" ")[0]} #{tests[0].split(" ")[1]} #{tests[0].split(" ")[2]}`
    puts (result.include? {tests[0][1]} && result.include?{tests[0].split(" ")[1]}) ? 1 : 0
end