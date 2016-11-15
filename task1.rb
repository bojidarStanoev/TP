require"json"
#Develop a program named FirstName_LastName_ClassNumber_d1c589.rb
#1. you are given two arguments;
#1.1 if there are other arguments they should be discarded;
#1.2 The first argument is to an XML file
#1.3 The second argument is to a JSON file
#2. Find the number of nodes in the xml that have a name equal to a key in the JSON file;
#3. Calculate calculate the square of this number;
#4. Print only the result value

file1=File.read(ARGV[0])
file2=File.read(ARGV[1])
h1=Hash.new
h2=Hash.new
h1=JSON.parse(file1)
h2=JSON.parse(file2)
i=0
h1.each_key{|key| 
if(h2.has_key?(key))
i+=1
end
}
puts i*i
