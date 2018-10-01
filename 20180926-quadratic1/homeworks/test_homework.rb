# Dobavih negativni stoinosti. Predi beshe pochti nevuzmozhno da vlezesh v discriminanta. ~Krasi

testing = ARGV[0]
trusted = ARGV[1]
10000.times do
	a = rand(20) - 5
	b = rand(20) - 5
	c = rand(20) - 5
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
puts "After 10000 different test cases there's no difference"
