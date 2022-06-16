class Vehicle
    
    attr_accessor :odometr, :gas_used

    def accelerate
        puts "Floor it!"
    end

    def sound_horn 
        puts "Beep! Beep!"
    end 

    def steer
        puts "Turn front 2 wheels."
    end 

    def mileage
        return @odometr / @gas_used
    end 

end

class Car < Vehicle 
end 

class Trucl < Vehicle 
end 

class Motorcycle < Vehicle 
end 

car = Car.new 
car.odometr = 11432
car.gas_used = 366 

car.accelerate
car.sound_horn 
car.steer

puts "Lifetime MPG:"
puts car.mileage