# hello world
#puts "Hello world!"

# global var
$globalVar = 'ruby'

# first class
class FirstClass
    @@callsMade = 0
    def initialize()
        @personName = "Smith"
    end

    def displayDetails()  
        @@callsMade += 1
        puts "Hello Mr #@personName"
        puts "Calls made: #@@callsMade"
    end
end

class SecondClass
    def initialize(name)
        @name = name
    end
    
    def displayDetails
        puts "Hello #@name"
    end
end

obj = FirstClass.new()
obj.displayDetails()
obj.displayDetails()
obj.displayDetails()

obj1 = SecondClass.new("mike")
obj1.displayDetails