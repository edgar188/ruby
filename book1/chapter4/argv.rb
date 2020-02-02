#ruby argv.rb text.txt

puts ARGV.join('-')
puts ARGV[0]
p ARGV
puts File.readlines(ARGV[0])