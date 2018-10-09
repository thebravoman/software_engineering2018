content = File.read("allfiles.txt")
content = content.split("\n")
file_to_write = File.open("results.csv", "w")



arguments = ["0 0 2", "3 0 3", "4 1 1", "0 0 0", "2 5 -3", "3 0 0", "1 5 -3", "1 4 -3"]

solutions = ["NaN", "NaN", "NaN", "*", "-3.0,0.5", "0.0", "-5.541,0.541", "-4.646,0.646"]

#compact removes nils
all_programs = content.
    map { |x| x.include?(".rb") ? x : nil }.
    compact.
    map { |x| x.split(" ")[-1]}

all_programs.each do |program|
    num_of_passes = 0
    pass_all = 0
    i = 0
    #result = puts `ruby #{program} #{ARGV[0]} #{ARGV[1]} #{ARGV[2]}`
    #puts result.include?("#{ARGV[3]}") && result.include?("#{ARGV[4]}") ? 1 : 0

    arguments.each do |val|
        result = `ruby #{program} #{val}`.gsub("\n", "")
        # puts "result: " + result.inspect
        # puts "solution: " + solutions[i].inspect
        if result.eql? solutions[i]
            num_of_passes = num_of_passes + 1
        end
        i = i + 1
    end
    # puts "num_of_passes: " + num_of_passes.to_s + "\n"
    if num_of_passes == arguments.length
        pass_all = 1
        # puts "enter pass_all"
    end
    # puts program + " pass: " + pass_all.to_s
    file_to_write.write(program.gsub(".rb", "").split("_").join(",") + "," + pass_all.to_s + "\n")
end
