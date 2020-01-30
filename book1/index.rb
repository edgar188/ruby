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

