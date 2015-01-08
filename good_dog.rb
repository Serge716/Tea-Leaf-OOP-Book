module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

module Seat
  def seat(msg)
    puts "#{msg}"
  end
end

class GoodDog
  include Speak
  include Seat
end

class HumanBeing
  include Speak
  include Seat
end

sparky = GoodDog.new
sparky.speak("Arf!")
sparky.seat("Seating for a treat")

bob = HumanBeing.new
bob.speak("Hello!")
bob.seat("Taking a seat")

puts "____GoodDog Ancestors____"
puts GoodDog.ancestors
puts ''
puts "____HumanBeing Ancestors____"
puts HumanBeing.ancestors