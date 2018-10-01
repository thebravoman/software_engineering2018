# Dobavih negativni stoinosti. Predi beshe pochti nevuzmozhno da vlezesh v discriminanta. ~Krasi

testing = ARGV[0]
trusted = ARGV[1]
100.times do |i|
	a = rand(20) - 10
	b = rand(20) - 10
	c = rand(20) - 10
	trusted_output = `ruby #{trusted} #{a} #{b} #{c}`
	testing_output = `ruby #{testing} #{a} #{b} #{c}`
	
	if i % 10 == 0
		puts "#{i}/100 test cases"
	end
	if trusted_output != testing_output
		puts "One of the programs gives different output..."
		puts "Your: #{testing_output}"
		puts "Trusted: #{trusted_output}"
		puts "When a=#{a} b=#{b} c=#{c}"
		return
	end
end
puts "After 100 different test cases there's no difference"
