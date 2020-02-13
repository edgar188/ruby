class Person
    def initialize(name)
        raise ArgumentError, "No name present" if name.empty?
        # raise ArgumentError, "No name present" if name.empty?
    end
end

person = Person.new("")

class BadDataException < RuntimeError
end

class Person
    def initialize(name)
        raise BadDataException, "No name present" if name.empty?
    end
end