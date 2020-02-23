require_relative "bot"

fred = Bot.new(:name => 'Fred', :data_file => File.open("bot_data"))
chris = Bot.new(:name => 'Chris', :data_file => File.open("bot_data"))

r = fred.greeting
10.times do
    puts "#{fred.name} said: " + r
    r = chris.response_to(r)
    puts "#{chris.name} said: " + r
    r = fred.response_to(r)
end