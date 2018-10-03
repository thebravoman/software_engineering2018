content = File.read("allfiles.txt")
   content = content.split("\n")

   all_programs = content.
           map {|x| x.include?(".rb") ? x : nil }.
           compact.
           map {|x| x.split(" ")[-1]}

   all_programs.each do |program|
           puts program
           case1 = [44, -188, -2]
           case1 = [0, 0, 5]
           case1 = [0, 0, 0]

           result = `ruby #{program} #{case1[0]} #{case1[1]} #{case1[2]}`
           if ((result.include?(-2) && result.include?(-1)) ? 1 : 0) == 1
              result = `ruby #{program} #{case2[0]} #{case2[1]} #{case2[2]}`
              if((result.include?('NaN')) ? 1 : 0) == 1
                result = `ruby #{program} #{case3[0]} #{case3[1]} #{case2[2]}`
                if((result.include?('*')) ? 1 : 0) == 1
                  puts 1
                else
                  puts 0
                end
            else
              puts 0
              end
          else
            puts 0
          end
