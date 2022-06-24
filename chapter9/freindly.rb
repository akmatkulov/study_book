module Friendly 
    def my_method 
        puts "Hello form Freindly"
    end 
end 

class ClassOne 
    include Friendly
end 

class ClassTwo
    include Friendly 
end 

ClassOne.new.my_method
ClassTwo.new.my_method