
class Employee 
    attr_reader :name, :salary

    def name=(name)
        if name == ''
            raise "Name can't be blank!"
        end 
        @name=name
    end     

    def initialize(name = "Anonymous")
        self.name = name
    end 

    def print_name
        puts "Name: #{self.name}"
    end 
end 

class SalariedEmployee < Employee 
    attr_reader :salary 

    def salary=(value)
        if value < 0 
            raise "A salary of #{value} ins't valid!"
        end 
        @salary=value 
    end 

    def initialize(name = "Anonymous", value = 0.0)
        super(name)
        self.salary = value
    end 

    def print_pay_stub
        print_name
        pay_for_period = (self.salary / 365.0) * 14
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Pay This Period: #{formatted_pay}"
    end 
end 

class HourlyEmployee < Employee
    
    def self.security_guard(name)
        HourlyEmployee.new(name, 19.25, 30)
    end 

    def self.cashier(name)
        HourlyEmployee.new(name, 12.75, 25)
    end 

    def self.janitor(name)
        HourlyEmployee.new(name, 10.50, 20)
    end 

    attr_reader :hourly_wage, :hours_per_week

    def hourly_wage=(hourly_wage)
        if hourly_wage < 0
            raise "An hourly wage of #{hourly_wage} isn't valid!"
        end 
        @hourly_wage = hourly_wage 
    end 
    def hours_per_week=(hours_per_week)
        if hours_per_week < 0
            raise "An hours per week of #{hours_per_week} isn't valid!"
        end 
        @hours_per_week = hours_per_week
    end 

    def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
        super(name)
        self.hourly_wage = hourly_wage
        self.hours_per_week = hours_per_week
    end 
        
    def print_pay_stub    
        print_name
        pay_for_period = hours_per_week * hourly_wage * 2
        formatted_pay = format("$%.2f", pay_for_period)
        puts "Pay This Period: #{formatted_pay}"
    end 
end 



ben = SalariedEmployee.new("Ben Chillwell", 50000)
ben.print_pay_stub

janitor = HourlyEmployee.janitor("Alina")
janitor.print_pay_stub

angela = HourlyEmployee.security_guard("Angela")
angela.print_pay_stub

