# eval "puts(2+2)"
# sum = eval("2+2")
# print sum

# --------------- Bindings ----------------

def binding_elsewhere
    x = 30
    return binding
end

def say_hi
    str = "Hello!"
    return binding
end

remote_binding = binding_elsewhere

# x = 10
# eval("puts x")
# eval("puts x", remote_binding)
# eval("puts str", say_hi)

# eval("x = 50", remote_binding)
# eval("puts x", remote_binding)

# ----------------- Other Forms of eval -------------------

# class Person
# end

# def add_accessor_method_to_person(accessor_param)
#     Person.class_eval(%{
#         attr_accessor :#{accessor_param}
#     })
# end

# add_accessor_method_to_person :name
# add_accessor_method_to_person :age

# obj = Person.new
# obj.name = "Bob"
# obj.age = 20

# puts obj.name, obj.age

# class Class
#     def add_accessor(accessor_param)
#         self.class_eval(%{
#             attr_accessor :#{accessor_param}
#         })
#     end

    # def say_hi
    #     self.class_eval(%{
    #         hello world
    #     })
    # end
# end

# class Person
# end

# person = Person.new
# Person.add_accessor :name
# Person.add_accessor :gender
# person.name = "Peter Cooper"
# person.gender = "male"
# puts "#{person.name} is #{person.gender}"

# class Car
#     add_accessor :model
#     add_accessor :color
# end

# bmw = Car.new
# bmw.model = "bmw"
# bmw.color = "white"

# puts bmw.model, bmw.color
# puts bmw.say_hi

# class MyClass
#     def initialize
#         @my_variable = 'Hello, world!'
#     end
# end

# obj = MyClass.new
# obj.instance_eval {
#     puts @my_variable 
# }

# ============== Creating Your Own Version of attr_accessor ================

# class Person
#     # attr_accessor :name
#     def name
#         @name
#     end

#     def name=(name)
#         @name = name
#     end
# end

# bob = Person.new
# bob.name = "Bob"
# puts bob.name

# class Class
#     def attr_accessor_custom(attr_param)
#         self.class_eval %{
#             def #{attr_param}
#                 @#{attr_param}
#             end

#             def #{attr_param}=(value)
#                 @#{attr_param} = value
#             end
#         }
#     end
# end

# class Car
#     attr_accessor_custom :model
# end

# bmw = Car.new
# bmw.model = "BMW"
# puts bmw.model

# -------------------- Arguments with array ------------------------
class Class
    def attr_accessor_custom(*attr_params)
        attr_params.each do |param|
            self.class_eval %{
                def #{param}
                    @#{param}
                end

                def #{param}=(value)
                    @#{param} = value
                end
            }
        end
    end
end

class Car
    attr_accessor_custom :model, :color, :year
end
# bmw = Car.new
# bmw.model = "BMW"
# bmw.color = "White"
# bmw.year = 2020
# puts %{
#     model: #{bmw.model},
#     color: #{bmw.color},
#     year: #{bmw.year}
# }

# ----------------- Transferring Execution to Another Program --------------------
# puts "Going to another_program"
# exec "ruby another_program.rb"
# puts "This will never be displayed"

# ------------------- Running Two Programs at the Same Time -----------------------

# child = fork do
#     sleep 3
#     puts "Child says hi!"
# end

# puts "Waiting for the child process..."
# Process.wait child
# puts "All done!"


# ======================= Safely Handling Data and Dangerous Methods =======================

# while x = gets
#     puts "=> #{eval(x)}"
# end

# def code_is_safe?(code)
#     code =~ /[`;*-]/ ? false : true
# end

# while x = gets
#     x.untaint if code_is_safe?(x)
#     next if x.tainted?
#     puts "=> #{eval(x)}"
# end

# ============================== Working with Microsoft Windows =====================

# require "Win32API"

# title = "My Application"
# text = "Hello, world!"
# res = Win32API.new('user32', 'MessageBox', %w{L P P L}, 'I').call(0, text, title, 0)
# puts res

# require 'win32ole'
# web_browser = WIN32OLE.new('InternetExplorer.Application')
# web_browser.visible = true
# web_browser.navigate('http://www.rubyinside.com/')

# require 'win32ole'
# web_browser = WIN32OLE.new('InternetExplorer.Application')
# web_browser.visible = true
# web_browser.navigate('http://www.rubyinside.com/')
# while web_browser.ReadyState != 4
# sleep 1
# end
# puts "Page is loaded"


# ================================ Threads ========================================

# threads = []

# 10.times do 
#     thread = Thread.new do
#         10.times { |i| print i; $stdout.flush; sleep rand(2) }
#     end
#     threads << thread
# end

# threads.each { |thread| thread.join }

# ========================= Fibers ==================================

# sg = Fiber.new do
#     s = 0
    
#     loop do
#         square = s * s
#         Fiber.yield square
#         s += 1
#     end
# end

# 10.times { puts sg.resume }

# ======================= RubyInline ============================