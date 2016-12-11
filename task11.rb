1. you are given two arguments;
1.1 if there are other arguments they should be discarded;
1.2 The first argument is to an XML file
1.3 The second argument is to a JSON file
2. Find the number of nodes in the xml that have a name of 3 or less symbols and there are no keys in the JSON with such name
3. Calculate the sum of the symbols of all this nodes
4. Print only the result value

require "nokogiri"
require "json"
 
xml = Nokogiri::XML.parse(File.read(ARGV[0]))
json = JSON.parse(File.read(ARGV[1]))
 
nodes = []
 
xml.xpath("//*").each do |node|
  nodes << node.name if node.name.length <= 3 and !json.has_key?(node.name)
end
 
sum = 0
nodes.each do |element| 
	sum += element.to_s.size
end

puts sum
