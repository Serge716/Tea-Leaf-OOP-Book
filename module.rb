# # Module

# module Swimmable
#   def swim
#     "I'm swimming!"
#   end
# end

# class Animal 
# end

# class Fish < Aminal
#   include Swimmable
# end

# class Mammal < Aminal
# end

# class Cat < Mammal
# end

# class Dog < Mammal
#   include Swimmable
# end

# sparky = Dog.new
# neemo = Fish.new
# paws = Cat.new

# puts sparky.swim
# puts neemo.swim
# puts paws.swim

# module Swimmable
#   def swim
#     "I'm swimming!"
#   end
# end

# class Animal; end

# class Fish < Animal
#   include Swimmable         # mixing in Swimmable module
# end

# class Mammal < Animal
# end

# class Cat < Mammal
# end

# class Dog < Mammal
#   include Swimmable         # mixing in Swimmable module
# end

# sparky = Dog.new
# neemo  = Fish.new
# paws   = Cat.new

# puts sparky.swim                 # => I'm swimming!
# puts neemo.swim                  # => I'm swimming!
# puts paws.swim 

# module Walkable
#   def walk
#     "I'm walking"
#   end
# end

# module Swimmable
#   def swim
#     "I'm swimming"
#   end
# end

# module Climbable
#   def climb
#     "I'm climbing"
#   end
# end


# class Animal
#   include Walkable

#   def speak
#     "I'm an animal, and I speak"
#   end
# end

# class GoodDog < Animal
#   include Swimmable
#   include Climbable
# end

# puts "-----------Animal method lookup---------------"
# puts Animal.ancestors

# fido = Animal.new
# puts fido.speak
# puts fido.walk

# puts "----GoodDog method lookup----"
# puts GoodDog.ancestors


# Modules as namespace

# module Mammal
#   class Dog
#     def speak(sound)
#       p "#{sound}"
#     end
#   end

#   class Cat
#     def say_name
#       p "#{name}"
#     end
#   end
# end

# buddy = Mammal::Dog.new
# kitty = Mammal::Cat.new


# Module as container

# module Mammal
#   .......


#   def self.some_out_of_palce_method(num)
#     num ** 2
#   end
# end

# value = Mammal.some_out_of_palce_method(4)
# value = Mammal::some_out_of_palce_method(4)


# Private Methods

# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age = a * DOG_YEARS
#   end

#   def public_disclosure
#     "#{self.name} in human years is #{human_years}"
#   end

#   private

#   def human_years
#     self.age / DOG_YEARS
#   end
# end

# sparky = GoodDog.new("Sparky", 4)
# puts sparky.public_disclosure


# Protected Methods

# class Animal
#   def a_public_method
#     "Will this work? " + self.a_protected_method
#   end

#   protected

#   def a_protected_methid
#     "Yes, I'm protected"
#   end
# end

# fido = Animal.new
# puts fido.a_public_method


# Accidental Method Overriding

class Parent
  def say_hi
    p "Hi from parent"
  end
end

class Child < Parent
  def say_hi
    p "Hi from child"
  end

  # def send
  #   p "send from child ..."
  # end

  # def instance_of?
  #   p "I'm a fake instance"
  # end
end

Parent.superclass
child = Child.new
child.say_hi

son = Child.new
son.send :say_hi

c = Child.new
puts c.instance_of? Child
puts c.instance_of? Parent

heir = Child.new
heir.instance_of? Child