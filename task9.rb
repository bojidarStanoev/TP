Develop a program named FirstName_LastName_ClassNumber_d66d27.rb

1. you are given an argument that is the full path to CSV file
1.1 if there are other arguments they should be discarded
2. The CSV file has four columns
3. The first row of the CSV are the headers with the following names

		C1, C2, C3, C4

4. Find the product of all the values for column C3 
	where 
	C1 < C4
	and 
	C3 = C4+3

5. Print only the result value


require 'csv'

csv_file = ARGV[0]

product = 1
data = {}
are_matches = false
CSV.foreach(csv_file) do |row|
	(1..4).each do |i|
		data.merge!("C#{i}" => row[i-1])
	end
	if ( data["C1"].to_i < data["C4"].to_i && data["C3"].to_i == data["C4"].to_i + 3 )
		are_matches = true
		product *= data["C3"].to_i
	end
end

if are_matches
	puts product
end
