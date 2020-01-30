# class Car
#     attr_accessor :speed, :year, :color
#     def initialize(s, y, c)
#         puts("OK")
#         @speed = s
#         @year = y
#         @color = c
#     end

#     def getAll
#         print(@speed, @year, @color)
#     end

#     def isSpeedCar
#         if @speed > 210 
#             return "GOOD"
#         end
#         return "BAD"
#     end
# end

# bmw = Car.new(200, 2020, "Silver")
# puts(bmw.color)

# toyota = Car.new(220, 219, "Black")
# puts(toyota.color)

# puts(toyota.getAll)
# puts(toyota.isSpeedCar)
# puts(bmw.isSpeedCar)


# ============================== Inheritance =============================

class Trannport
    attr_accessor :color, :speed
    def sayBipBip
        puts "Bip Bip!"
    end
end

class Car < Trannport
    attr_accessor :weels
    def initialize(w)
        @weels = w
    end
    
    def getWeelsCount
        puts("Weels count is: #{@weels}")
        puts(@color)
    end
end

bmw = Car.new(4)
bmw.getWeelsCount
bmw.sayBipBip