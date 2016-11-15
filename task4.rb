
#Develop a program named FirstName_LastName_ClassNumber_86a617.rb
#1. you are given an argument that is the full path to CSV file
#1.1 if there are other arguments they should be discarded
#2. The CSV file has four columns
#3. The first row of the CSV are the headers with the following names
#		C1, C2, C3, C4
#4. Find the product of all the values for column C3 
#	where 
#	C1 < C4
#	and 
#	C3 = C4+3
#5. Print only the result value
require"csv"
file=CSV.parse(File.read(ARGV[0]))
i=0
sum=0
file.each do |row|
if(file[i][0].to_i<file[i][3].to_i && file[i][2].to_i==file[i][3].to_i+3)
sum+=file[i][2].to_i
end
i+=1
end
puts sum
