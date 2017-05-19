File.open("simple_file.txt", "w") {|file| file.write("adding first line of text")}

File.read("simple_file.txt")