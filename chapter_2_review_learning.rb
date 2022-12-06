# How do you create and add items to an Array?
# Creating an array
numbers = [1, 2, 3, 4, 5]
fruits = ["apple", "banana", "watermelon", "grapes"]
print numbers

print fruits

# Adding items to arrays
print numbers.push(6)
print (fruits << ["oranges"]).flatten!

# How do you create and add items to a Hash?
# Creating a hash using Hash.new
person1 = Hash.new
person1["first_name"] = "John"
puts person1

# Creating a hash using curly braces { }
person2 = {
    "first_name" => "John", "surname" => "Smith", "age" => 30
}
puts person2

# Creating a hash using symbol : instead of rocket '=>' symbol
person3 = {
    first_name: "Adam", surname: "Thompson", age: 40
}
puts person3

# Adding an item to a hash
person2["hobbies"] = "swimming, running, coding"
puts person2

# Some hash methods I played with
puts person1.values
puts person2.keys
puts person3.has_key?("hobbies")
puts person2.has_key?("hobbies")

# List two differences between Arrays and Hashes
=begin
Arrays are created by using square brackets [ ]
Hashes are created by using curly braces { } , it also requires a label (key/value) pair compare to arrays.
To assigen a key value pair in Hash, we need to use => or ( : ) which is 2 key strokes less than =>
=end

# How do you define a class?
# to define a class we use 'class' followed by the class name but it has to be capitalized 
class Food
end


# What is the difference between a class and an instance of a class?
=begin
I am finding class tricky but I will give it a go at explaining what I think it is...
a class is like a template / blueprint / set of instructions.
an instance of the class is (.new), we use it make the class live so that it can be used.
=end
class Food
end

person = Food.new

# What is meant by scope?
# scope refers to the area the programme i.e. method are executable. 
# Within the def initialize I have 2 variables ( person_name ) and (favourit_food), the variables are only usable in that method, initialize.
# So it is limited and can only be used in that method, (local).
# To make my variable useable throughout the class I turned it into a 'instance variable' making it so that it can be used throughout the class.

class Food
  def initialize(person_name, favorite_food)
    @person_name = person_name
    @favorite_food = favorite_food
  end

  def name
    return @person_name
  end

  def food_type
    return @favorite_food
  end

  def interpolation
    return "#{@person_name} likes #{@favorite_food} food!"
  end
end

person = Food.new("John", "Chinese")
puts person.food_type
puts person.name
puts person.interpolation