testing = ARGV[0]
trusted = ARGV[1]
100.times do
	a = rand(20)
	b = rand(20)
	c = rand(20)
	trusted_output = `ruby #{trusted} #{a} #{b} #{c}`
	testing_output = `ruby #{testing} #{a} #{b} #{c}`

	if trusted_output != testing_output
		puts "One of the programs gives different output..."
		puts "Your: #{testing_output}"
		puts "Trusted: #{trusted_output}"
		puts "When a=#{a} b=#{b} c=#{c}"
		return
	end
end
puts "After 100 different test cases there's no difference"
