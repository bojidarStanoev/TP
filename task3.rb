#1. you are given two arguments;
#1.1 if there are other arguments they should be discarded;
#1.2 The first argument is to an XML file
#1.3 The second argument is to a JSON file
#2. Find the number of nodes in the xml that have a name of 3 or less symbols and there are no keys in the JSON with such name;
#3. Calculate the sum of the symbols of all this nodes;
#4. Print only the result value



require('nokogiri')
require('json')
my_xml = Nokogiri::XML.parse(File.read(ARGV[0].to_s))
my_json = JSON.parse(File.read(ARGV[1].to_s))

total_symbols = 0

my_xml.xpath("//*").each do |node|
	found = false
	if node.name.length <= 3
		my_json.each do |k, v|
			if k == node.name
				found = true
			end
		end
		
		if !found 
			total_symbols += node.name.length
		end
	end
end

puts total_symbols
