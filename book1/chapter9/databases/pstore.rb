class Person
    attr_accessor :name, :job, :gender, :age
    def initialize(name, job, gender, age)
        @name = name
        @job = job
        @gender = gender
        @age = age
    end
end

fred = Person.new("Fred", "Developer", "male", 22)
laura = Person.new("Laura", "Developer", "female", 21)

require 'pstore'
# store = PStore.new("storagefile")
# store.transaction do
#     store[:people] ||= Array.new
#     store[:people] << fred
#     store[:people] << laura
# end

store = PStore.new("storagefile")
people = []
store.transaction do
    people = store[:people]
end

people.each do |person|
    p person
    p person.name
end