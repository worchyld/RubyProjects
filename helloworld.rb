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

x = 3
if x < 2 
    puts "less than 2"
elsif x = 3
    puts "is 3"
else
    puts "higher than 3"
end

# switch statement

age = 15

case age 

when 0..4 
    puts "0-4"
when 5..14
    puts "5-14"
when 15..18
    puts "15-18"
else 
    puts ">18"
end

# loops

i = 0
value = 5

while i < value do
    puts i
    i += 1
end

for i in (0..5)
    puts i
end 

def sum(a, b)
    total = a + b
    return total
end

def totalup(*args)
    sum = 0
    # go through each argument
    args.each do |value|
        sum += value
    end
    return sum
end

puts sum(3,5)
puts totalup(4,8,1)

someArray = Array.new

someArray << 123
someArray << "abc"

puts "#{someArray}"
puts someArray.size

