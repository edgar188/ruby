# ====================== Proceduer Programing VS OOP =========================

def perimeter_of_square(side_length)
    return side_length * 4
end

def area_of_square(side_length)
    side_length * side_length
endgi

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

# =================================== Global Variables ==================================

def basic_method
    x = 777
    puts $x
end
$x = 33
x = 33
basic_method









