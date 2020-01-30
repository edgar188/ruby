# str_1 = "str_1"
# str = "hello  "
#puts(str_1.upcase() + str_2.strip())

#puts(str_2.length())
#puts(str.include? "ewqe")
#puts("Count: " + -15.to_s)

# ------------------- gets, chomp, to_s, to_i ----------------------------
# puts("What\'s your name?")
# name = gets.chomp()
# puts("Hello " + name + " !")

# puts("first number:")
# num1 = gets().chomp().to_n
# puts("secont number:")
# num2 = gets().chomp().to_n
# res = (num1 + num2).to_s
# puts("result is: " + res)

# =============================== Array ===============================
# arr = Array[1, 2, 3]
# arr2 = arr
# arr2[0], = "okkkkkk"
# # puts(arr, arr2.length())
# puts(arr.include? "3".to_i)

# =============================== Assotative Array, HASH ===============================
# countries = {
#     "armenia" => "Yerevan",
#     1 => "1111",
#     :FR => "Paris"
# }

# puts(countries["armenia"])
# puts(countries[1])
# puts(countries[:FR])

# ========================= Methods(functions) ==========================
# def sayHello(name = "initial") 
#     puts("Hello!" + name.to_s())
# end    

# def getSum(n1, n2) 
#     return n1 + n2
#     puts("will not work")
# end

# def returnMlpValue(n1, n2) 
#     return n1+1, n2+2, 100
# end

# sayHello("Edgar")
# sayHello
# res = getSum(5, 5)
# puts(res)
# resArr = returnMlpValue(1,2)
# puts(resArr)

# ===================== conditional parametrs ================

# secret = "Blue"
# answer = ""

# while answer != secret
#     puts("Your answer: ")
#     answer = gets().chomp()
#     if answer == secret
#         return puts "WIN !!!"
#     else puts "Lose !!!"
#     end
# end

# users = ["Edgar", "Bob", "Marley", "Kinsey"]
# res = []

# for index in 0..users.length() - 1
#     res[index] = users[index] + " !!!"
# end
# puts(users)
# print(res);

# (users.length()).times do |i|
#     res[i] = users[i] + " !"
# end
# puts(users, res)

# users.each do |u|
#     puts(u)
# end

# ====================== Error catch ===========================
arr = [1, 2, 3];
# puts(arr["str"])

# num = 10 / 0;

begin
    puts(exception)
rescue => exception
    puts(exception)
    num = 10 / 0;
rescue => exception
    puts(exception)
else
    puts("else body")
end