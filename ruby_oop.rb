# class Being
#   def initialize(name)
#     @name = name
#   end
# end

# Being.new
# b = Being.new
# puts b


# class Person
#   def initialize(name)
#     @name = name
#   end

#   def get_name
#     @name
#   end
# end

# p1 = Person.new("Jane")
# p2 = Person.new("Beky")

# puts p1.get_name
# puts p2.get_name

# class Person
#   def initialize(name="unknown", age=0)
#     @name = name
#     @age = age
#   end

#   def to_s
#     "Name #{@name}, Age: #{@age}"
#   end
# end

# p1 = Person.new
# p2 = Person.new("unknown", 17)
# p3 = Person.new("Becky", 19)
# p4 = Person.new("Roert")

# puts p1, p2, p3, p4

# class Person
#   def initialize(name)
#     @name = name
#   end

#   def get_name
#     @name
#   end
# end

# per = Person.new("Jane")
# puts per.get_name
# puts per.send :get_name

# class Circle
#   @@PI = 3.141592

#   def initialize
#     @radius = 0
#   end

#   def get_radius(radius)
#     @radius = radius
#   end

#   def area
#     @radius * @radius * @@PI
#   end
# end

# c = Circle.new
# c.get_radius(5)
# puts c.area

# class Some
#   def method1
#     puts "Public method called"
#   end

#   public 

#   def method2
#     puts "Public method 2 is called"
#   end

#   def method3
#     puts "Public method 3 is called"
#     method1
#     self.method1
#   end
# end

# s = Some.new
# s.method1
# s.method2
# puts "----------------------"
# s.method3

# class Some
#   def initialize
#     method1
#   end

#   private

#   def method1
#     puts "Private method1 is called"
#   end
# end

# s = Some.new
# #s.method1

# class Some
#   def initialize
#     method1
#     self.method1
#   end

#   protected

#   def method1
#     puts "Protected method1 is called"
#   end
# end

# s = Some.new
# # s.method1

# class Being
#   def initialize
#     puts "Being class created"
#   end
# end

# class Human < Being
#   def initialize
#     super
#     puts "Human class created"
#   end
# end

# Being.new
# Human.new

# class Being
# end

# class Living < Being
# end

# class Mammal < Living
# end

# class Human < Mammal
# end

# p Human.ancestors

class Being
  @@count = 0

  def initialize
    @@count += 1
    puts "Being class created"
  end

  def show_count
    "There are #{@@count} beings"
  end
end

class Human < Being
  def initialize
    super
    puts "Human being created"
  end
end

# class Animal < Being
#   def initialize
#     super
#     puts "Animal is created"
#   end
# end

# class Dog < Animal
#   def initialize
#     super
#     puts "Dog is created"
#   end
# end

# Human.new
# puts "_____________________"
# d = Dog.new
# puts d.show_count

# class Base

#   def initialize
#     @name = "Base"
#   end

#   private

#   def private_method
#     puts "Private method called"
#   end

#   protected

#   def protected_method
#     puts "Protected method called"
#   end

#   public

#   def get_name
#     return @name 
#   end
# end

# class Derived < Base

#   def public_method
#     private_method
#     protected_method
#   end
# end

# d = Derived.new
# d.public_method
# puts d.get_name

class Base

  def show(x=0, y=0)
    p "Base class, x: #{x}, Y: #{y}"
  end
end

class Derived < Base

  def show(x, y)
    super
    super x
    super x, y
    super()
  end
end

d = Derived.new
d.show(3, 3)