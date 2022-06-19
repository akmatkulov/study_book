lines = []

File.open("reviews.txt") do |item|
    lines = item.readlines 
end 

relevant_lines = lines.find_all {|item| item.include?("Truncated")}

puts relevant_lines