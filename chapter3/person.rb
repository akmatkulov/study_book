class Person 
    def greeting(name)
        "Hello! #{name.capitalize}!"
    end 
end 

class Freind < Person 
    def greeting(name)
        basic_greeting = super()
        puts "#{basic_greeting} Glad to see you"
    end 
end 

mike = Freind.new 
mike.greeting("sovetbek")