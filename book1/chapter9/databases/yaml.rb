require "yaml"

class Person
    attr_accessor :name, :job, :gender, :age
    def initialize(name, job, gender, age)
        @name = name
        @job = job
        @gender = gender
        @age = age
    end
end

# fred = Person.new("Fred", "Developer", "male", 22)
# laura = Person.new("Laura", "Developer", "female", 21)
# test_data = [fred, laura]
# p test_data

yaml_string = <<END_OF_DATA
---
- !ruby/object:Person
age: 45
name: Jimmy
- !ruby/object:Person
age: 23
name: Laura Smith
END_OF_DATA

test_data = YAML.load(yaml_string)
puts test_data[0].name
puts test_data[1].name