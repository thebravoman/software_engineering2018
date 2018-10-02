testing = ARGV[0]
trusted = ARGV[1]
j = 50
j = ARGV[2].to_i if ARGV[2]

j.times do |i|
  a = rand(-5..5)
  b = rand(-5..5)
  c = rand(-5..5)
  trusted_output = `ruby #{trusted} #{a} #{b} #{c}`
  testing_output = `ruby #{testing} #{a} #{b} #{c}`

  next unless trusted_output != testing_output

  puts 'One of the programs gives different output...'
  puts "Your: #{testing_output}"
  puts "Trusted: #{trusted_output}"
  puts "When a=#{a} b=#{b} c=#{c}"
  return
end
puts "After #{j} different test cases there's no difference"
