

 content = File.read("allfiles.txt")
    content = content.split("\n")

    all_programs = content.
            map {|x| x.include?(".rb") ? x : nil }.
            compact.
            map {|x| x.split(" ")[-1]}

    all_programs.each do |program|
            result = `ruby #{program} 0 0 0` #all=0
            puts (result=="*") ? 1:0

            result = `ruby #{program} 0 4 5` #a=0
            puts (result=="-1.25") ? 1:0

            result = `ruby #{program} 0 3 4` #3 znaka sled deseti4nata
            puts (result=="-1.333") ? 1:0

            result = `ruby #{program} 4 0 5` #b=0
            puts (result=="*") ? 1:0

            result = `ruby #{program} 4 5 0` #c=0
            puts (result=="*") ? 1:0

            result = `ruby #{program} 0 0 5` 
            puts (result=="NaN") ? 1:0

            result = `ruby #{program} 0 5 0` 
            puts (result=="NaN") ? 1:0

            result = `ruby #{program} 5 0 0` 
            puts (result=="NaN") ? 1:0

            result = `ruby #{program} 4 4 1` #D=0
            puts (result=="1/2" ? 1:0)

            result = `ruby #{program} 2 3 4` #D<0
            puts (result=="NaN") ? 1:0

            result = `ruby #{program} 1 3 2` #D>0
            puts (result=="-2,-1") ? 1:0
            
    end