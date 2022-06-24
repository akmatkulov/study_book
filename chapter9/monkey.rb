module Clumsy 
    def investigate(thing)
        puts "Looks at #{thing}"
    end 
end 

module Curious 
    def break(thing)
        puts "Knoks over #{thing}"
    end 
end 

class Monkey
    include Clumsy
    include Curious 
end 

bubbles = Monkey.new 
bubbles.investigate("vesa")
bubbles.break("vesa")