
class Employee 
    attr_reader :name, :salary

    def name=(value)
        if value == ''
            raise "Name can't be blank!"
        end 
        @name=value 
    end 

    def salary=(value)
        if value < 0
            raise "A salary of #{value} isn't valid!"
        end 
        @salary=value 
    end 

    def print_pay_stub 
        puts "Name: #{@name}"
        pay_for_period=(@salary/365)*14
        puts "Pay This Period: $#{pay_for_period}"
    end 
end 


ben = Employee.new 
ben.salary = 50000
ben.name = "Ben Chillwell"
ben.print_pay_stub