class Animal
    attr_reader :name, :age 
    
    def name=(value)
        if value == ''
            raise "Name can't be blank!"
        end 
        @name = value 
    end
    def age=(value)
        if value < 0 
            raise "An age of #{value} isn't valid!"
        end
        @age = value 
    end

    def talk 
        puts "#{@name} says Bark!"
    end 
    
    def move(destination)
        puts "#{@name} running to the #{destination}"
    end 
    
    def report_age
        puts "#{@name} is #{@age} years old." 
    end 

end



class Dog < Animal 
end 

class Cat < Animal 
    def talk 
        puts "#{@name} says Meow!"
    end 
end 

class Bird < Animal
    def talk 
        puts "#{@name} says Chirip! Chirip!"
    end 
    
    def move(destination)
        puts "#{@name} flyinng to the #{destination}."
    end 
end 

class Armadillo < Animal

    def to_s 
        "#{@name} the armadillo, age #{@age}"
    end 
    def move(destination)
        puts "#{@name} unrolls!"
        super(destination)
    end  
end 



dillon = Armadillo.new 
dillon.name=("Dillon")
dillon.age=6
dillon.move("sand")
dillon.report_age

puts dillon