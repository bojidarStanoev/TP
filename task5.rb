#Develop a program named FirstName_LastName_ClassNumber_55599c.rb

#1. you are given two arguments;
#1.1 if there are other arguments they should be discarded;
#1.2 The first argument is to an XML file
#1.3 The second argument is to a JSON file
#2. Find the number of nodes in the xml that have a name equal to a key in the JSON file;
#3. Calculate calculate the square of this number;
#4. Print only the result value
require('nokogiri')
require('json')

my_xml = Nokogiri::XML.parse(File.read(ARGV[0].to_s))
my_json = JSON.parse(File.read(ARGV[1].to_s))

total_symbols = 0

my_xml.xpath("//*").each do |node|
	
	
		my_json.each do |k, v|
			if k == node.name
				total_symbols
			end
		
		
		
	end
end

puts total_symbols
