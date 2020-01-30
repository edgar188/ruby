#1.upto(5) {puts"ok"}
#10.downto(5) {puts"qweer"}
#0.step(50, 5) {puts"step"}

#1.upto(5) {|num| puts num}

# 10.downto(5) do |num|
#     puts num
# end

#10.step(50, 5) do |num|
#    puts num
#end

# ------------------------ Constants ------------------ 
# Str = "str-1"
# puts Str
# Str = 15
# puts Str

# ---------------------- Strings --------------------------
multStr = %w{example of
multiple lines 
string!}
puts multStr

multStr2 = <<END_MY_STRING_PLEASE
This is the string
And a second line
END_MY_STRING_PLEASE
    
puts multStr2