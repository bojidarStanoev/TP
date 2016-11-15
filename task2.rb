#Develop a program named FirstName_LastName_ClassNumber_aa5f54.rb

#1. you are given two command line arguments;
#1.1 if there are other arguments they should be discarded;
#1.2 The first argument is the full path of a CSV file with 4 columns
#1.3 The second argument is the full path of a JSON file

#2. Find the sum of all the values in the JSON file where:
 #the key of this value is exactly equal to a value in any row on column 2 from the CSV
 
#3. Print only the result value

require"json"
require"csv"
h1=Hash.new

i=0
sum=0

file2=CSV.read(ARGV[0])
file1=File.read(ARGV[1])
h1=JSON.parse(file1)


file2.each do |row|
wanted=file2[i][1].to_s
h1.each{|key,value|
if(h1.has_key?(wanted))
sum+=value.to_i
end
}
i+=1
end

puts sum
