# This class stores information about Person
class Person 
    attr_accessor :name, :age, :gender
    # Create the person object and store their name
    def initialize(name)
        @name = name
    end
    # Print this person's name to the screen
    def print_name
        print "Person called #{@name}"
    end
    # This is secret method
    def secret_method #:nodoc:
    end
end

class Worker < Person
    attr_accessor :specialty, :experience
    # Create worker object and store name, specialty and experience
    def initialize(name, specialty, experience)
        super(name)
        @specialty = specialty
        @experience = experience
    end
    # Print this worker's Specialty and experience
    def about_worker
        print "Name-#{name}, Specialty-#{@specialty}, Experience-#{@experience}"
    end
end

worker = Worker.new("Bob", "Programmer", "3 years")
worker.about_worker