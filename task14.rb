1. you are given two command line arguments;
1.1 if there are other arguments they should be discarded;
1.2 The first argument is the full path of a CSV file with 4 columns
1.3 The second argument is the full path of a JSON file

2. Find the the min of all the values in the JSON filee where :
 the key of this value is contained in the value of any row on column 2 from the CSV 
 
3. Print only the result value


require 'json'
require 'csv'

passed_keys=[]
numbers=[]
hash=JSON.parse(File.read(ARGV[1]))
CSV.foreach(ARGV[0]) do |row|
	key=row[1]
	if hash.has_key?(key) and !passed_keys.include? key
		numbers << hash[key].to_i
		passed_keys << key
	end
end
puts numbers.min
