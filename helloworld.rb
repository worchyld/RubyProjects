# hello world
#puts "Hello world!"

# global var
$globalVar = 'ruby'

# first class
class FirstClass
    def initialize()
        @personName = "Smith"
    end

    def displayDetails()  
        puts "Hello Mr #@personName"
    end
end

obj = FirstClass.new()
obj.displayDetails()
