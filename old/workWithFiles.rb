# File.open("./text/example.txt", "r") do |file|
#     puts(file.read().include? "Lorem")
# end

# File.open("./text/example.txt", "a") do |file|
#     file.write("\nNew text !!!");
# end

# File.open("./text/newWrite.txt", "w") do |file|
#     file.write("New !");
# end

File.open("./text/index.html", "w") do |file|
    file.write(
        "<div>
            <h1>Hello World</h1>
        </div>"
    )
end