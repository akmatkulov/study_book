lines = []

File.open("votes.txt") do |line|
    lines = line.readlines 
end 

puts lines