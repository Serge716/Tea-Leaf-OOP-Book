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

class GoodDog

  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  # def name
  #   @name
  # end

  # def name=(n)
  #   @name = n
  # end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
sparky.name = "Spartacus"
puts sparky.name


fido = GoodDog.new("Fido")
puts fido.speak