# Ubuntu and apt

# Look at the homeworks

# Who has a homework
 - implement a program to check who has a homework

# Checkhomeworks
 - implement a program to check the homeworks


# Read file content
````
    content = File.read("all_homeworks.csv")

    puts content
````
## Separate file on array of strings by new line

````
    content = File.read("all_homeworks.csv")
    array = content.split("\n")
    p array
````

## Map elements
````
    content = File.read("all_homeworks.csv")
    array = content.split("\n")
    p array
     - on this line, we take array and remove ".rb" from each element and then
     we split each element on "_"
    p array.map { |x| x.gsub(".rb", "") }.map {|x| x.split "_" }
````

## Write to program

````
    content = File.read("all_homeworks.csv")
    file_to_write = File.open("results.csv", "w")
    array = content.split("\n")
    p array

    array.select { |x| x.include? ".rb" }.
            map { |x| x.gsub(".rb", "") }.
            map { |x| x.split "_" }.
            select { |x| x.size == 3 }.each do |element|
                    file_to_write.write(element[0]+","+element[1]+","+element[2]+"\n")
            end


    file_to_write.close
````

# Homework R2
Homework task is described in 20180926-quadratic1/README.md
