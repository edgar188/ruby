# p $:
# p $LOAD_PATH

# $LOAD_PATH.each do |v|
#     puts v
# end

# ---------------------- Conditional inclusin files --------------------
# char = "b"
# require_relative char == "a" ? "a" : "b"

# %w{a b}.each do |filename|
#     require_relative filename
# end

# ["a", "b"].each do |filename|
#     require_relative filename
# end

# =========================== Net/HTTP ============================

# require 'net/http'
# url = URI.parse('http://www.rubyinside.com/')
# response = Net::HTTP.start(url.host, url.port) do |http|
#     http.get(url.path)
# end

# content = response.body
# p content

# =================== OpenStruct =======================

require "ostruct"

person = OpenStruct.new
person.name = "Bob"
person.age = 28
p person