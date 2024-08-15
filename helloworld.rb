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

# types of access modifers
# public
# private

class SecondClass
    def initialize(name)
        @name = name
    end

    def displayDetails
        makeName
    end
    
    private 
    def makeName
        puts "Hello #{@name}"
    end

    public
    def publicName
        puts "Public name"
    end
end

obj = FirstClass.new()
obj.displayDetails

obj1 = SecondClass.new("Mike Tyson")
obj1.displayDetails()
obj1.publicName

# conditions

x = 1
if x < 2 
    puts "less than 2"
else
    puts "higher than 2"
end