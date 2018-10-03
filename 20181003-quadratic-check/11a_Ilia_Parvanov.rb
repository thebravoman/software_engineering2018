content = File.read("allfiles.txt")
content = content.split("\n")
file_to_write = File.open("results.csv", "w")



arguments = ["0 0 2", "0 0 0", "2 5 -3"]

solutions = ["NaN", "*", "-3,0.5"]

#compact removes nils
all_programs = content.
    map { |x| x.include?(".rb") ? x : nil }.
    compact.
    map { |x| x.split(" ")[-1]}

all_programs.each do |program|
    num_of_passes = 0
    pass_all = 0
    #result = puts `ruby #{program} #{ARGV[0]} #{ARGV[1]} #{ARGV[2]}`
    #puts result.include?("#{ARGV[3]}") && result.include?("#{ARGV[4]}") ? 1 : 0

    arguments.each do |i|
        result = puts `ruby #{program} #{arguments[i]}`
        if result == solutions[i]
            num_of_passes += 1
        end
    end
    if num_of_passes == arguments.length
        pass_all = 1
    end
    puts program + " pass: " + pass_all
    file_to_write.write(program.gsub(".rb", "").split("_").join(",") + "," + pass_all + "\n")
end
