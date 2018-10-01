FILES = `ls | grep "[0-9]"`.split
FILES_COUNT = FILES.count

20.times do
  chosen = [FILES[rand(FILES_COUNT)], FILES[rand(FILES_COUNT)]]
  chosen[1] = FILES[rand(FILES_COUNT)] until chosen[0] != chosen[1]
  puts "Running #{chosen.join " and "}\n"
  puts `ruby test_homework.rb #{chosen.join ' '}`
  puts '-' * 50
end