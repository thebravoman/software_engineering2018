content = File.read("allfiles.txt")
    content = content.split("\n")

    all_programs = content.
            map {|x| x.include?(".rb") ? x : nil }.
            compact.
            map {|x| x.split(" ")[-1]}
	
    all_programs.each do |program|
            puts program
            result = `ruby #{program} #{0} #{0} #{0}` #all 0
            puts (result.include?("*")) ? 1 : 0
            result = `ruby #{program} #{2} #{5} #{2}` #D>0
            puts (result.include?("-2.0,-0.5"))
            result = `ruby #{program} #{0} #{0} #{2}` #a = b = 0 
            puts (result.include?("NaN")) ? 1 : 0
            result = `ruby #{program} #{0} #{5} #{0}` # a = c = 0
            puts (result.include?("0.0")) ? 1 : 0
            result = `ruby #{program} #{2} #{0} #{0}` # b = c =0
            puts (result.include?("0.0")) ? 1 : 0
            result = `ruby #{program} #{2} #{5} #{0}` # c = 0
            puts (result.include?("-2.5,0.0")) ? 1 : 0
            result = `ruby #{program} #{0} #{5} #{2}` # a =0
            puts (result.include?("-0.4")) ? 1 : 0
            result = `ruby #{program} #{2} #{0} #{2}` # b = 0
            puts (result.include?("Nan")) ? 1 : 0
            result = `ruby #{program} #{1} #{2} #{1}` # D = 0
            puts (result.include?("-1.0")) ? 1 : 0
            result = `ruby #{program} #{2} #{1} #{1}` # D < 0
            puts (result.include?("NaN")) ? 1 : 0
            result = `ruby #{program} #{24} #{142} #{17}` # D = 0
            puts (result.include?("-5.794,-0.122")) ? 1 : 0
    end
