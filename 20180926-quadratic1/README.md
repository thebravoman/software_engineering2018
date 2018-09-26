# Goals of the task
1. Look at the homeworks
2. https://blablablabl.com/equations/new
	-> a
	-> b
	-> c
	-> Submit

	-> x1,x2
Rails, Controller, Form, Heroku, 


# Implementations in class
Create a csv with all the homeworks

ls -l
ls -l > allfiles.txt

- Write a program for reading file
content = File.read("allfiles.txt")

puts content

- Split on new lines
content = File.read("allfiles.txt")
content = content.split("\n")
p content[3]

- Find only the file names
content = File.read("allfiles.txt")
content = content.split("\n")
p content.
        map {|x| x.include?(".rb") ? x : nil }.
        compact.
        map {|x| x.split(" ")[-1]}
- Full program
content = File.read("allfiles.txt")
content = content.split("\n")
file_to_write = File.open("results.csv", "w")

content.
        map {|x| x.include?(".rb") ? x : nil }.
        compact.
        map {|x| x.split(" ")[-1]}.
        each do |x|
$_").join(",")+"\n")
        end

file_to_write.close

## Check all quadratic equations

Implement a program to check all the homeworks and their solutions for x1 and x2

````
content = File.read("allfiles.txt")
content = content.split("\n")

all_programs = content.
        map {|x| x.include?(".rb") ? x : nil }.
        compact.
        map {|x| x.split(" ")[-1]}

all_programs.each do |program|
        puts program
        result = `ruby #{program} #{ARGV[0]} #{ARGV[1]} #{ARGV[2]}`
        puts (result.include?(ARGV[3]) && result.include?(ARGV[4])) ? 1 : 0
end
````
