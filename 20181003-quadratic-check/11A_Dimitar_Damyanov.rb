content = File.read("allfiles.txt")
content = content.split("\n")
file_to_write=File.open("results.csv","w")

l=
[
    [0,0,0],
    [0,0,5],
    [0,5,0],
    [5,0,0],
    [0,3,4],
    [4,0,5],
    [4,0,-5],
    [3,4,0],
    [4,4,1],
    [2,3,4],
    [1,3,2]
]

res=
[
    ['*'],
    ["NaN"],
    ["0"],
    ["0"],
    ["-1.333"],
    ["NaN"],
    ["1,118"],
    ["-1.333,0"],
    ["0.5"],
    ["NaN"],
    ["-2,-1"]

]
    all_programs = content.
            map {|x| x.include?(".rb") ? x : nil }.
            compact.
            map {|x| x.split(" ")[-1]}

    all_programs.each do |program|
            puts program
            i=0
            r=0
            while i<11
                result=`ruby ../20180926-quadratic1/homeworks/#{program} #{l[i][0]} #{l[i][1]} #{l[i][2]}`
                result=result.gsub("\n","")
                puts result
                r=result==res[i][0]? 1:0
                if r==0
                    break
                end
                i+=1
            end
            puts r
            name_=program.gsub(".rb","").split("_").join(",")
            file_to_write.write(name_ + " :" + r.to_s+"\n")
            
    end
    file_to_write.close()