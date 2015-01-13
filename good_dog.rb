# module Speak
#   def speak(sound)
#     puts "#{sound}"
#   end
# end

# module Seat
#   def seat(msg)
#     puts "#{msg}"
#   end
# end

# class GoodDog
#   include Speak
#   include Seat
# end

# class HumanBeing
#   include Speak
#   include Seat
# end

# sparky = GoodDog.new
# sparky.speak("Arf!")
# sparky.seat("Seating for a treat")

# bob = HumanBeing.new
# bob.speak("Hello!")
# bob.seat("Taking a seat")

# puts "____GoodDog Ancestors____"
# puts GoodDog.ancestors
# puts ''
# puts "____HumanBeing Ancestors____"
# puts HumanBeing.ancestors

# class GoodDog
#   def initialize
#     puts "This object was initialized!"
#   end
# end

# sparky = GoodDog.new

# class GoodDog
#   attr_accessor :name, :height, :weight

#   def initialize(name, height, weight)
#     @name = name
#     @height = height
#     @weight = weight
#   end

#   def speak
#     "#{name} says Arf!"
#   end

#   def change_info(n, h, w)
#     self.name = n 
#     self.height = h
#     self.weight = w
#   end

#   def info
#     "#{name} weighs #{weight} and is #{height} tall"
#   end

#   def self.what_am_i
#     "I'm a GoodDog class!"
#   end
# end

# # sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
# # puts sparky.info

# # puts sparky.change_info("Spartacus", "24 inches", "45 lbs")
# # puts sparky.info

# puts GoodDog.what_am_i


# Class Variable
# class GoodDog

#   @@number_of_dogs = 0

#   def initialize
#     @@number_of_dogs += 1
#   end

#   def self.total_number_of_dogs
#     @@number_of_dogs
#   end
# end

# puts GoodDog.total_number_of_dogs

# dog1 = GoodDog.new
# dog2 = GoodDog.new

# puts GoodDog.total_number_of_dogs

# Constants
# class GoodDog
#   DOG_YEARS = 7

#   attr_accessor :name, :age

#   def initialize(n, a)
#     self.name = n
#     self.age = a * DOG_YEARS
#   end

#   def to_s
#     "This dog's name #{name} and it is #{age} in dog years"
#   end
# end

# sparky = GoodDog.new("Sparky", 4)
# puts sparky.age
# puts sparky
# p sparky


# self
class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h 
    slef.weight = w 
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
p sparky.what_is_self