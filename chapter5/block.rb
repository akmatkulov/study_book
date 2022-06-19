
def my_method(&my_block)
    my_block.call("2 turtles doves", "1 partridge")
end 

my_method do |x , y|
    puts "My method gave to me... "
    puts x, y
end 
