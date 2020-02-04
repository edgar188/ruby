# ====================== Proceduer Programing VS OOP =========================

def perimeter_of_square(side_length)
    return side_length * 4
end

def area_of_square(side_length)
    side_length * side_length
end

def perimeter_of_triangle(side1, side2, side3)
    side1 + side2 + side3
end

def area_of_triangle(base_width, height)
    base_width * height / 2
end


# p perimeter_of_square(10)
# p area_of_square(10)
# p perimeter_of_triangle(5, 10, 10)
# p area_of_triangle(10, 12)


class Shape 
end

class Square < Shape
    def initialize(side_length)
       @side_length = side_length; 
    end
    
    def perimeter
        @side_length * 4
    end

    def area
        @side_length * @side_length
    end
end

class Triangle < Shape
    def initialize(side1, side2, side3, base_width = 1, height = 1)
        @side1 = side1
        @side2 = side2
        @side3 = side3
        @base_width = base_width
        @height = height
    end

    def perimeter
        @side1 + @side2 + @side3
    end

    def area
        @base_width * @height / 2
    end
end

# my_square = Square.new(10)
# p my_square.perimeter
# p my_square.area

# my_triangle = Triangle.new(10, 15, 20, 10, 15)
# p my_triangle.perimeter
# p my_triangle.area


# ===================================== Local Variables ================================

# def basic_method
#     x = 50
#     puts x
# end 

# x = 10

# basic_method
# puts x

# ================================ Global Variables =============================

# def basic_method
#     x = 777
#     puts $x
# end
# $x = 33
# x = 33
# basic_method

# ======================== Instance or Object Variables =======================
# class Test
#     def initialize(obj_var)
#         @obj_var = obj_var;
#     end
#     def test_method
#         @obj_var
#     end
# end

# test = Test.new("ok")
# p test.test_method


# ========================== Class Variables ===========================

# class Test
#     def initialize
#         if defined?(@@objects_count)
#             @@objects_count += 1
#         elsif
#             @@objects_count = 1
#         end
#     end
#     def self.count
#         @@objects_count
#     end
# end

# a = Test.new
# b = Test.new
# c = Test.new
# p Test.count

# ==================== Class methods vs Instance methods =====================

# class Test
#     def self.test_method
#         puts "Method of Class"
#     end
#     def test_method
#         puts "Method of Instance"
#     end
# end

# Test.test_method
# Test.new.test_method

# ======================== Inheritance =======================

# class Person
#     def initialize(name)
#         @name = name
#     end

#     def getName
#         @name
#     end
# end

# class Programmer < Person
#     def getName
#         "Programmer: " + super.to_s
#     end
# end

# # person = Person.new("Mark")
# # puts person.getName

# programmer = Programmer.new("Bob")
# puts programmer.getName
# print programmer.instance_variables

# ====================== Overriding existing methods ======================

# class String
#     def length
#         "new length!"
#     end
# end

# str = "hello world"
# puts str.length

# ==================== Reflection and Discovering an Object’s Methods =====================

# a = "This is a test"
# print a.methods

# class Person
#     attr_accessor :name, :age
# end

# p = Person.new
# p.name = "Fred"
# p.age = 20
# p.instance_variables

# ============================ Encapsulation ==============================


