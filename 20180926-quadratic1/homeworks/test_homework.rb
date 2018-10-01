testing = ARGV[0]
trusted = ARGV[1]
100.times do |i|
  a = rand(-10..9)
  b = rand(-10..9)
  c = rand(-10..9)
  trusted_output = `ruby #{trusted} #{a} #{b} #{c}`
  testing_output = `ruby #{testing} #{a} #{b} #{c}`

  puts "#{i}/100 test cases" if i % 10.zero?
  next unless trusted_output != testing_output

  puts 'One of the programs gives different output...'
  puts "Your: #{testing_output}"
  puts "Trusted: #{trusted_output}"
  puts "When a=#{a} b=#{b} c=#{c}"
  return
end
puts "After 100 different test cases there's no difference"
