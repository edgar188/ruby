require 'sqlite3'
# puts "It's all okay!" if defined?(SQLite3::Database)

$db = SQLite3::Database.new("dbfile")
$db.results_as_hash = true

def disconnect_and_quit
    $db.close
    puts "Bye!"
    exit
end

def create_table
    puts "Creating people table"

    $db.execute %q{
        CREATE TABLE people (
            id integer primary key,
            name varchar(50),
            job varchar(50),
            gender varchar(6),
            age integer
        )
    }
end

def add_person
    puts "Name: "
    name = gets.chomp
    puts "Job: "
    job = gets.chomp
    puts "Gender: "
    gender = gets.chomp
    puts "Age: "
    age = gets.chomp

    $db.execute("INSERT INTO people (name, job, gender, age) VALUES (?, ?, ?, ?)", name, job, gender, age)
end

def find_person
    puts "Enter name or ID of person to find: "
    value = gets.chomp

    person = $db.execute("SELECT * FROM people WHERE name = ? OR id = ?", value, value.to_i)

    unless person
        puts "No result"
        return
    end

    puts person
end

loop do
    puts %q{
    Please select an option:
        1. Create people table
        2. Add a person
        3. Look for a person
        4. Quit
    }
    case gets.chomp
        when '1'
            create_table
        when '2'
            add_person
        when '3'
            find_person
        when '4'
            disconnect_and_quit
    end
end

