puts "Enter title"
ttl = gets.chomp
puts "Enter notes"
note = gets.chomp

puts "save/cancel"
sc = gets.chomp

begin
  if sc == "save" 
    file = File.open("tuto6.txt","a"){|f| f.write "Title-#{ttl},Notes-#{note}\n"}
    puts File.read("tuto7.txt")
  end
  #raise FileNotFoundException.new("File not Found") unless
  #File.exists?("tuto6.txt")
  rescue Errno::ENOENT
    puts "File not Found"
end



