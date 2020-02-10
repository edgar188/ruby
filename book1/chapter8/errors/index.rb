# class Person
#     def initialize(name)
#         raise ArgumentError, "No name present" if name.empty?
#     end
# end

# person = Person.new("")

class BadDataException < RuntimeError
end

# class Person2
#     def initialize(name)
#         raise BadDataException, "No name present!" if name.empty?
#     end
# end

# person2 = Person2.new("")

# ======================== Handling Exceptions ======================

# begin
#     puts 5 + "asd"
# rescue RuntimeError
#     puts "You caused an Runtime Error!"
# rescue ArgumentError
#     puts "You caused an Argument Error!"
# rescue ZeroDivisionError
#     puts "You caused an Zero Division Error!"
# rescue => e
#     puts "You caused an Error! #{e.class}"
# end

# ======================== Catch and Throw ============================

# catch(:finish) do
#     100.times do |i|
#         puts i
#         throw :finish if i == 10 
#     end
#     puts "some text..."
# end
# puts "code...code..."

def generate_random_number_except_123
    x = rand(1000)
    throw :finish if x == 123
end

catch(:finish) do
    1000.times { generate_random_number_except_123 }
    puts "Generated 1000 random numbers without generating 123!"
end




