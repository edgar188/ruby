require_relative "bot"

bot = Bot.new(:name => "Ziggs", :data_file => File.open("bot_data"))

# p bot.greeting
# while input = gets and input.chomp != "end"
#     p ">> " + bot.response_to(input)
# end
# p bot.farewell

# ------------ Using Text Files as a Source of Conversation ------------
user_lines = File.readlines("user_text.txt")

user_lines.each do |line|
    line.delete!("\n")
end

p "#{bot.name} says: " + bot.greeting
user_lines.each do |line|
    p "User says: " + line
    p "#{bot.name} says: " + bot.response_to(line)
end
p "#{bot.name} says: " + bot.farewell

