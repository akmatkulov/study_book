class CelestialBody 
    attr_accessor :name, :type
end 

default_body = CelestialBody.new 
default_body.type = 'planet'
bodies = Hash.new(default_body)

p bodies.default 

bodies['Mars'].name = "Mars"

p bodies.default 