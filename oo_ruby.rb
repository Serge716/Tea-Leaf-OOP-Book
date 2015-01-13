# class Box
#   # Initilize class variable
#   @@count = 0

#   #constructor methos
#   def initialize(w, h)
#     @width, @height = w, h
#     @@count += 1
#   end

#   #define to_s method
#   def to_s
#     "(W:#{@width}, H:#{@height})"
#   end

#   def self.print_count
#     puts "The count is #{@@count}"
#   end

#   #accessor methods
#   def print_width
#     @width
#   end

#   def print_height
#     @height
#   end

#   # setter methods
#   def set_width=(value)
#     @width = value
#   end

#   def set_height=(value)
#     @height = value
#   end

#   #instance methods
#   def get_area
#     get_width * get_height
#   end

#   #define private accessor methods

#   def get_width
#     @width
#   end

#   def get_height
#     @height
#   end

#   #make the private
#   private :get_width, :get_height

#   # instance method to print area
#   def print_area
#     @area = get_width * get_height
#     puts "Big box area is #{area}"
#   end

#   # make it protected
#   protected :print_area
# end

# box = Box.new(10, 20)
# box2 = Box.new(30, 50)

# x = box.print_width
# y = box.print_height

# puts "width of the box is #{x}"
# puts "Height of the box is #{y}"

# box.set_width = 30
# box.set_height = 50

# puts "width of the box is #{x}"
# puts "Height of the box is #{y}"

# a = box.get_area
# puts "the are of the bod is #{a}"

# Box.print_count

# puts "String representation of box is #{box}"

# box.print_area


# class Box
#   def initialize(w, h)
#     @width = w 
#     @height = h 
#   end

#   def get_area
#     @width * @height
#   end
# end

# class BigBox < Box
#   def get_area
#     puts "Big box area is #{@width * @height}"
#   end
# end

# box = BigBox.new(10, 20)
# box.get_area

# class Box
#   BOX_COMPANY = "TATA Inc"
#   BOX_WEIGHT = 10

#   def initialize(w, h)
#     @width = w 
#     @height = h 
#   end

#   def get_area
#     @width * @height
#   end
# end

# box = Box.new(10, 20)
# a = box.get_area

# puts "Area of the box is #{a}"
# puts Box::BOX_COMPANY
# puts "Box weight is #{Box::BOX_WEIGHT}"

class Box
  puts "Type of self = #{self.type}"
  puts "Name of self = #{self.name}"
end

