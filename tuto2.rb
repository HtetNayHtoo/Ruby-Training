puts "Enter Your BirthDate(Ex:2000/1/1)"

dob = gets.chomp

age = Time.now.year - Time.new(dob).year

unless age >= 18
  puts "#{age}, child"
else
  puts "#{age}, adult"
end
