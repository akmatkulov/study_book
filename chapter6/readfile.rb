lines = []

File.open("reviews.txt") do |item|
    lines = item.readlines 
end 

relevant_lines = lines.find_all {|item| item.include?("Truncated")}
reviews = relevant_lines.reject {|item| item.include?("--")}

def find_adjective(item)
    words = item.split(" ")
    index = words.find_index("is")
    words[index + 1]
end 

adjective = reviews.map do |item|
    adjective = find_adjective(item)
    "#{adjective.capitalize}"
end 

puts "The critics agree, Truncated is: "
puts adjective