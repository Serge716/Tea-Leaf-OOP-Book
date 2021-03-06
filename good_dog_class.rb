# class Animal
#   def speak
#     "Hello"
#   end
# end

# class GoodDog < Animal
#   attr_accessor :name

#   def initialize(n)
#     self.name = n 
#   end

#   def speak
#     "#{self.name} say arf!"
#   end
# end

# class Cat < Animal
# end

# sparky = GoodDog.new("Sparky")
# paws = Cat.new
# puts sparky.speak
# puts paws.speak

# Super
# class Animal
#   def speak
#     "Hello"
#   end
# end

# class GoodDog < Animal
#   def speak
#     super + " from GoodDog class"
#   end
# end

# sparky = GoodDog.new
# puts sparky.speak


# Super with initialize

# class Animal
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end
# end

# class GoodDog < Animal
#   def initialize(color)
#     super
#     @color = color
#   end
# end

# class BadDog < Animal
#   def initialize(age, name)
#     super name
#     @age = age
#   end
# end

# bear = BadDog.new(2, "bear")
# p bear

# bruno = GoodDog.new("brown")
# p bruno
# puts bruno