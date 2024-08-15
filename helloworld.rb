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

#someArray = Array.new
#someArray << 123
#someArray << "abc"

someArray = Array.new(5) { |e| e=e*2 }

puts "#{someArray}"
puts someArray.size

lastItem = someArray.pop
puts lastItem

# Hashes (key-value pairs)

hash = {
    '1' => 'ruby',
    '2' => 'php',
    '3' => 'rust',
}
puts "#{hash}"
puts hash.size

# all keys
puts "#{hash.keys}"

# all values
puts "#{hash.values}"
puts hash.has_key?('4')
puts hash.has_value?('java')

hash.delete('1')
puts "#{hash}"

# date and time
time = Time.now

puts time.year
puts time.month
puts time.day

puts time.strftime("%Y-%m-%d")


class Geek 
   
    # defining instance method getAge 
    def getAge(n) 
          
      # instance variable      
      @geekAge = n 
    end  
       
    # defining instance method incrementAge 
    def incrementAge()  
        @geekAge +=1
    end

    # defining instance method displayDetails 
    def displayDetails()  
        puts "Geek age is #@geekAge"
    end   

end

# creating an object of class Geeks 
obj = Geek.new

# calling the instance methods of class Geeks 
obj.getAge(20) 
obj.displayDetails() 
obj.incrementAge() 
obj.displayDetails() 