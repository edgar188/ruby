class Pet
    attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dog < Pet
end

class Snake < Pet
    attr_accessor :lenght
    def attack(to)
        puts "Attack ----> #{to}"
    end
end

snake = Snake.new
snake.lenght = 2;
snake.name = "Bob"
#puts(snake.lenght, snake.name)
#puts snake.class
#puts(2.class)
snake.attack("cat")


