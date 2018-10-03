   content = File.read("allfiles.txt")
    content = content.split("\n")

    all_programs = content.
            map {|x| x.include?(".rb") ? x : nil }.
            compact.
            map {|x| x.split(" ")[-1]}

    all_programs.each do |program|
			puts program
			if `ruby #{program} 0 0 0` == '*'
				if `ruby #{program} 2 0 -8` == '-2,2'
					if `ruby #{program} 2 0 8` == 'NaN' && `ruby #{program} 0 0 -8` == 'NaN' && `ruby #{program} 8 1 8` == 'NaN'
						if `ruby #{program}	0 2 -2` == '-1'
							if `ruby #{program} 0 9 0` == '0'
								if `ruby #{program} 1 -3 2` == '1,2'
									if `ruby #{program} 2 4 2` == '-1'
										puts "1"
									end
								end
							end
						end
					end
				end
			else
				puts "0"
			end
    end


