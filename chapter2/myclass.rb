class MyClass 
    def my_attribute=(value)
        @my_attribute=value 
    end

    def my_attribute
        @my_attribute
    end
end

my_instance = MyClass.new 
my_instance.my_attribute = "assigned via method call"
puts my_instance.my_attribute
my_instance.my_attribute = "same here"
puts my_instance.my_attribute