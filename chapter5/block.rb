
def my_method
    yield "2 turtles doves", "1 partridge"
end 

my_method do |x , y|
    puts "My method gave to me... "
    puts x, y
end 
