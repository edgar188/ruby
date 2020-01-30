# ====================== Hashes ==========================

user = {
    "name" => "Bob",
    "surname" => "King",
    "age" => 20
}

#p user.size
#p user["name"]

# user.each do |k, v|
#     p "Key: #{k}, Value: #{v}"
# end

#p user.keys
#user.delete("age")

# user.delete_if do |k, v|
#     k == "name" && v == "Bob"
# end
# p user

people = {
    'fred' => {
        'name' => 'Fred Elliott',
        'age' => 63,
        'gender' => 'male',
        'favorite painters' => ['Monet', 'Constable', 'Da Vinci']
    },
    'janet' => {
        'name' => 'Janet S Porter',
        'age' => 55,
        'gender' => 'female'
    }
}
# p people['fred']['name']

# ====================== Flow control ============================

# age = 12
# if (age <= 20)
#     p "Age is less than 20"
#     if (age > 15)
#         p "Age is more than 15"
#     else 
#         p "Age is less than 15"
#     end
# end

# puts age > 12 ? "yes" : "no";

# if age > 12
#     puts "yes"
# else 
#     puts "no"
# end

fruit = "banana"
if fruit == "apple"
    color = "green"
elsif fruit == "banana"
    color = "yellow"
else color = "orange"
end
# p color

color = case fruit
    when "apple" 
        "green"
    when "banana"
        "banana"
    else "orange"
end
# p color 


# ======================== While Until ==========================
# x = 1
# while x < 10
#     p x
#     x += 1
# end

# y = 1
# until y > 10
#     p y
#     y += 1
# end

# ====================== Code Blocks ==========================
x = [10, 20, 30]
arr = []
x.each do |y|
    arr << y 
end
#p arr

# https://medium.com/@alexsnaumov/%D0%BF%D1%80%D0%BE%D0%BA%D0%B8-%D0%B1%D0%BB%D0%BE%D0%BA%D0%B8-%D0%B8-%D0%BB%D1%8F%D0%BC%D0%B1%D0%B4%D1%8B-%D0%B2-ruby-f81c403bd1f5

print_param = lambda do |x, y| 
    puts x + y 
end

# print_param.call(10, 5)

# ============================ Date, Times ================================

# p Time.now.to_s.split(" ")[1]

class Fixnum
    def seconds
        self
    end

    def minutes
        self * 60
    end

    def hours
        self * 60 * 60
    end

    def days
        self * 60 * 60 * 24
    end

    def test
        "#{self} method test..."
    end
end

puts Time.now
puts Time.now + 10.minutes
puts Time.now + 16.hours
puts Time.now - 7.days
puts 10.test