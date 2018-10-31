FILES = `ls | grep "[0-9][B,b]"`.split
FILES_COUNT = FILES.count

chosen = ["11b_Martin_Jordanov.rb", ""]

FILES.each do |testing|
  chosen[1] = testing
  puts "Running #{chosen.join " and "}"
  puts `ruby test_homework.rb #{chosen.join ' '} #{ARGV[0] || 20}`
  puts '-' * 50
end
