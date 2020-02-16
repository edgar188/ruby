require "csv"

# people = CSV.open("text.txt")

# people.each do |val|
#     puts "
#     Id: #{val[0]},
#     Name: #{val[1]},
#     Gender: #{val[2]},
#     Age: #{val[3]}"
# end

# CSV.parse(File.read('text.txt')).each do |val|
#     p val
# end

# p CSV.read("text.txt")

# people = CSV.read("text.txt")

# laura = people.find {|person| person[1] =~ /Laura/}
# print laura

# young_people = people.find_all do |person|
#     person[4].to_i.between?(20, 40)
# end

# p young_people
# young_people.each do |person|
#     p "Name: #{person[1]}"
# end


# ================= Saving Data Back to the CSV File ====================
people = CSV.read("text.txt")
laura = people.find {|person| person[1] =~ /Laura/}
laura[1] = "New Name"


CSV.open('text.txt', 'w') do |csv|
    people.each do |person|
        csv << person
    end
end


# people = CSV.read("text.txt")
# p people





