class CelestialBody 
    attr_accessor :name, :type
end 

budies = Hash.new do |hash, key|
    body = CelestialBody.new 
    body.type = "planet"
    hash[key] = body 
end 

budies["Mars"].name = "Mars"
budies["Europa"].name = "Europa"
budies["Europa"].type = "moon"
budies["Venus"].name = "Venus"

puts budies