class Dog 

    attr_reader :name, :age 

    def name=(value)
        if value == ""
            raise "Name can't be blank!"
        end  
        @name = value
    end

    def age=(value)
        if value < 0
            raise "An age of #{value} isn't valid!"
        end 
        @age=value
    end

    def report_age 
        puts "#{@name} is #{@age} years old."
    end


    def talk 
        puts "#{@name} says Bark!"
    end

    def move(destination)
        puts "#{@name} running to the #{destination}."
    end
end


rex = Dog.new 

rex.name=("Rex")
rex.age=(7)
rex.talk 
rex.move("house")
rex.report_age