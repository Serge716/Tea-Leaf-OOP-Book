# class Car
#   attr_reader :name, :price
#   attr_writer :name, :price

#   def to_s
#     "#{@name}: #{@price}"
#   end
# end

# c1 = Car.new
# c2 = Car.new

# c1.name = "Porsche"
# c1.price = 23500

# c2.name = "Volkswagen"
# c2.price = 9500

# puts "The #{c1.name} costs #{c1.price}"
# puts c1
# puts c2

# class Book
#   attr_accessor :title, :pages
# end

# b1 = Book.new
# b1.title = "Hidden Motives"
# b1.pages = 255

# p "the book #{b1.title} has #{b1.pages} pages"

# class MMath
#   PI = 3.141592
# end

# puts MMath::PI

# class Being
#   def to_s
#     "This is Being class"
#   end
# end

# b = Being.new
# puts b.to_s
# puts b

# class Circle
#   attr_accessor :radius

#   def initialize(r)
#     @radius = r
#   end

#   def +(other)
#     Circle.new @radius + other.radius
#   end

#   def to_s
#     "Circle with radius: #{@radius}"
#   end
# end

# c1 = Circle.new(5)
# c2 = Circle.new(6)
# c3 = c1 + c2

# puts c3

# class Circle
#   def initialize(x)
#     @r = x
#   end

#   def self.info
#     "This is a Circle class"
#   end

#   def area
#     @r * @r * 3.141592
#   end
# end


# c = Circle.new(3)
# puts c.area
# puts Circle.info


# class Wood
#   def self.info
#     "This is a Wood class"
#   end
# end

# class Brick

#   class << self
#     def info
#       "This is a Brick class"
#     end
#   end
# end

# class Rock
#   def Rock.info
#     "This is a Rock class"
#   end
# end

# puts Wood.info
# puts Brick.info
# puts Rock.info


# class Wood
#   def info
#     "This is a wood object"
#   end
# end

# wood = Wood.new
# puts wood.info

# class Brick
#   attr_accessor :info
# end

# brick = Brick.new
# brick.info = "This is a Brick object"
# puts brick.info

# class Rock
# end

# rock = Rock.new

# def rock.info
#   "This is a rock object"
# end

# puts rock.info

# class Animal
#   def make_noise
#     "Some noise"
#   end

#   def sleep
#     puts "#{self.class.name} is sleeping"
#   end
# end

# class Dog < Animal
#   def make_noise
#     "Woof!"
#   end
# end

# class Cat < Animal
#   def make_noise
#     "Meow!"
#   end
# end

# [Animal.new, Dog.new, Cat.new].each do |animal|
#   puts animal.make_noise
#   animal.sleep
# end

# puts Math::PI
# puts Math.sin(2)

# include Math

# puts PI
# puts sin(2)

# module Forest
#   class Rock ; end
#   class Tree ; end
#   class Animal ; end
# end

# module Town
#   class Pool ; end
#   class Cinema ; end
#   class Square ; end
#   class Animal ; end
# end

# puts Forest::Tree.new
# puts Forest::Rock.new
# puts Town::Cinema.new

# puts Forest::Animal.new
# puts Town::Animal.new

# # Mixins
# module Device
#   def switch_on
#     puts "on"
#   end

#   def switch_off
#     puts "off"
#   end
# end

# module Volume
#   def volume_up
#     puts "volume up"
#   end

#   def volume_down
#     puts "volume_down"
#   end
# end

# module Pluggable
#   def plug_in
#     puts "plug in"
#   end

#   def plug_out
#     puts "plug out"
#   end
# end

# class CellPhone
#   include Device, Volume, Pluggable

#   def ring
#     puts "ringing"
#   end
# end

# cph = CellPhone.new
# cph.switch_on
# cph.volume_up
# cph.ring

# Exceptions

# x = 35
# y = 0

# begin
#   z = x / y
#   puts z
# rescue => e 
#   puts e 
#   p e 
# end


# Raising Exceptions
# age = 17

# begin
#   if age < 18
#     raise "Person is a minor"
#   end

#   puts "Entry Allowed"
# rescue => e 
#   puts e 
#   p e 
#   exit 1
# end


# begin
#   f = File.open("stones", "r")

#   while line = f.gets do 
#     puts line
#   end
# rescue => e 
#   puts e 
#   p e 
# ensure
#   f.close if f 
# end


# Raising Own Exceptions

class BigValueError < StandardError
end

LIMIT = 333
x = 3_432_453

begin

  if x > LIMIT
    raise BigValueError, "Exceeded the maximum value"
  end

  puts "Script continues"
rescue => e 
  puts e 
  p e 
  exit 1
end