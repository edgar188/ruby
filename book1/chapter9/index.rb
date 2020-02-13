# File.open("text.txt") do |l|
#     puts l.gets
# end

class MyFile
    attr_reader :handle
    def initialize(filename)
        @handle = File.new(filename, "r")
    end

    def finished
        @handle.close
    end
end

# f = MyFile.new("text.txt")
# f.handle.each do |line| 
#     puts line 
# end
# f.finished


# =============== More File-Reading Techniques =================

# f = MyFile.new("text.txt")
# f.handle.each(",") do |line| 
#     puts line
# end
# f.finished

# array_of_lines = File.readlines("text.txt")
# array_of_lines.each do |item|
#     print item
# end


# ================ Writing to Files ========================

# File.open("text2.txt", "w") do |f|
#     f.puts "this is a test"
# end

# 5.times do |f|
#     File.open("text2.txt", "a") do |f|
#         f.puts Time.now
#     end
# end

# ============== Rename file ==================
# File.rename("file1.txt", "text1.txt")

# ================ Delete File ====================

# File.new("example.txt", "w")

File.delete("example.txt")

