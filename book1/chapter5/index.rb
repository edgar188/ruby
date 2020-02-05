# ====================== Proceduer Programing VS OOP =========================

# def perimeter_of_square(side_length)
#     return side_length * 4
# end

# def area_of_square(side_length)
#     side_length * side_length
# end

# def perimeter_of_triangle(side1, side2, side3)
#     side1 + side2 + side3
# end

# def area_of_triangle(base_width, height)
#     base_width * height / 2
# end

# p perimeter_of_square(10)
# p area_of_square(10)
# p perimeter_of_triangle(5, 10, 10)
# p area_of_triangle(10, 12)


# class Shape 
# end

# class Square < Shape
#     def initialize(side_length)
#        @side_length = side_length; 
#     end
    
#     def perimeter
#         @side_length * 4
#     end

#     def area
#         @side_length * @side_length
#     end
# end

# class Triangle < Shape
#     def initialize(side1, side2, side3, base_width = 1, height = 1)
#         @side1 = side1
#         @side2 = side2
#         @side3 = side3
#         @base_width = base_width
#         @height = height
#     end

#     def perimeter
#         @side1 + @side2 + @side3
#     end

#     def area
#         @base_width * @height / 2
#     end
# end

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

# person = Person.new("Mark")
# puts person.getName

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

# Private --------------------------------------------
# class Person
#     def initialize(fullname)
#         catch_name(fullname)
#     end

#     def name
#         "#{@name} #{@surname}"
#     end

#     def catch_name(fullname)
#         name, surname = fullname.split(/\s+/)
#         set_name(name)
#         set_surname(surname)
#     end

#     def set_name(name)
#         @name = name
#     end

#     def set_surname(surname)
#         @surname = surname
#     end

# private :catch_name, :set_name, :set_surname
# end

# person = Person.new("Kinsey Morley")
# person.set_name("asdasd") # error
# p person.name

# Protected --------------------------------------------
# class Person
#     def initialize(age)
#         @age = age
#     end

#     def age
#         @age
#     end

#     def age_difference_with(other_person)
#         (self.age - other_person.age).abs
#     end

# protected :age
# end

# fred = Person.new(30)
# chris = Person.new(20)

# p chris.age_difference_with(fred)
# p chris.age # error

# =============================== Polymorphism ===============================

# class Animal 
#     attr_accessor :name

#     def initialize(name)
#         @name = name
#     end
# end

# class Dog < Animal
#     def talk
#         "Haf-Haf!"
#     end
# end


# class Cat < Animal
#     def talk
#         "Meaow!"
#     end
# end

# animals = [Dog.new("DOG"), Cat.new("CAT")]
# animals.each do |animal|
#     print animal.name + " " + animal.talk
# end

# puts 1000.to_s
# puts [1,2,3].to_s;
# puts ({ :name => 'Fred', :age => 10 }).to_s


# ================================= Nested Classes ================================

# class Drawing

# def self.give_me_a_circle
#     Circle.new
# end

# class Circle
#     def what_am_i
#         "This is a circle"
#     end
# end

# class Line
# end

# end

# a = Drawing.give_me_a_circle
# puts a.what_am_i

# b = Drawing::Circle.new
# puts b.what_am_i

# c = Circle.new
# puts c.what_am_i

# ============================ The Scope of Constants ===============================
# Pi = 3.14

# class OtherPlanet
#     Pi = 5
#     def self.get_Pi
#         Pi
#     end
# end

# p OtherPlanet.get_Pi
# p Pi

# ================================== Modules ====================================

# module NumberStuff
#     def self.random
#         rand(1000)
#     end
# end

# module LetterStuff
#     def self.random
#         (rand(26) + 65).chr
#     end
# end

# puts NumberStuff.random
# puts LetterStuff.random


# module ToolBox
#     class Ruler
#         attr_accessor :length
#     end
# end

# module Country
#     class Ruler
#         attr_accessor :name
#     end
# end

# a = ToolBox::Ruler.new
# a.length = 100
# p a.length

# b = Country::Ruler.new
# b.name = "initial"
# p b.name


# ============================ Mix-Ins =============================

# module UsefulFeatures
#     def class_name
#         self.class.to_s
#     end

#     def say_hi
#         "Hello world!"
#     end
# end
#     class Person
#     include UsefulFeatures
# end

# x = Person.new
# puts x.class_name
# puts x.say_hi

# module AnotherModule
#     def do_stuff
#         puts "This is a test"
#     end
# end

# include AnotherModule
# do_stuff


# ============================= Enumerable ============================

# arr = [1, 2, 3, 4, 5]

# new_arr = arr.collect { |i| i.to_s + "x" }
# print new_arr

# class AllVowels
#     include Enumerable

#     VOWELS = %w{a x e i o u}
#     def each
#         VOWELS.each { |v| yield v }
#     end
# end

# x = AllVowels.new
# arr = x.collect { |i| i + "x" }
# p arr
# arr = x.select { |i| i > "j" }
# p arr
# arr = x.sort
# p arr

# ========================== Comparable ============================

# puts 4.between?(3, 10)
# puts 1 <=> 2  #-1
# puts 1 <=> 1 #0
# puts 2 <=> 1 #1

# class Song
#     include Comparable
#     attr_accessor :length

#     def <=>(other)
#         @length <=> other.length
#     end

#     def initialize(song_name, length)
#         @song_name = song_name
#         @length = length
#     end 
# end

# a = Song.new('Rock around the clock', 143)
# b = Song.new('Bohemian Rhapsody', 544)
# c = Song.new('Minute Waltz', 60)

# puts a.length, b.length, c.length

# puts a <=> b
# puts b <=> c
# puts a.between?(b, c)

# ==================== Using Mix-Ins with Namespaces and Classes ======================

# module ToolBox
#     class Ruler
#         attr_accessor :length
#     end
# end

# module Country
#     class Ruler
#         attr_accessor :name
#     end
# end

# include Country
# a = Ruler.new
# a.name = "test"
# p a.name


# ======================= Building a Dungeon ==========================

Person = Struct.new(:name, :age, :gender)
fred = Person.new("Fred", 20, "male")

class Dungeon
    attr_accessor :player
    def initialize(player)
        @player = player
        @rooms = {}
    end
end

Player = Struct.new(:name, :location)
Room = Struct.new(:reference, :name, :description, :connections)

# x = Player.new("Bob")
# x.name=("asd")
# p x.name
$x = 10
def t
    puts x
end

t()