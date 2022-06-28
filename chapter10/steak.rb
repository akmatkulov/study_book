class Steak

    include Comparable 

    GRADE_SCORES = {"Prime" => 3, "Choice" => 2, "Select" => 1}

    attr_accessor :grade 
    
    def <=>(other)
        if GRADE_SCORES[self.grade] < GRADE_SCORES[other.grade]
            return -1 
        elsif GRADE_SCORES[self.grade] == GRADE_SCORES[other.grade]
            return 0
        else 
            return 1     
        end
    end 
end 

prime = Steak.new 
prime.grade = "Prime"
choice = Steak.new 
choice.grade = "Choice"
select1 = Steak.new 
select1.grade = "Select"

puts "prime > choice: #{prime > choice}"
puts "prime < select: #{prime < select1}"
puts "select == select: #{select1 == select1}"
puts "select <= select: #{select1 <= select1}"
print "choice.between?(select, prime): "
puts choice.between?(select1, prime)