# File.open("text.txt") do |l|
#     puts l.gets
# end

# class MyFile
#     attr_reader :handle
#     def initialize(filename)
#         @handle = File.new(filename, "r")
#     end

#     def finished
#         @handle.close
#     end
# end

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
# File.delete("example.txt")

# ================ File Operations ===================

# print File.join('full', 'path', 'here', 'filename.txt')
# print File.join(File::SEPARATOR , 'full', 'path', 'here', 'filename.txt')
# print File.expand_path("tex1.txt")

# puts File.mtime("text1.txt")
# puts File.mtime("text1.txt").day
# puts File.mtime("text1.txt").hour

# ============ Checking Whether a File Exists =================
# puts File.exist?("text2.txt") ? "File exists!" : "File not exist"

# ============ Checking a File Size =================

# print File.size("text1.txt") if File.exist?("text1.txt")
# p File.size("text13.txt")

# ============= Directories ================

# Dir.chdir("./dir")
# File.new("new.txt", "w")
# puts Dir.getwd
# puts Dir.pwd

# # All files in current dir
# puts Dir.entries("./").join(" ")

# Dir.foreach("./") do |entry|
#     puts entry
# end

# print Dir["./*"]
# print Dir["./asd/*"]

# Dir["./asd/*"].each do |file|
#     File.delete(file)
# end

# Dir.delete("./asd")

# ================ Creating Files in the Temporary Directory ==================

