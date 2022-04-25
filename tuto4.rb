puts "Enter Array Length"
arr_length = gets.chomp.to_i

animal_array = Array.new(10)
arr_length.times.each do
  puts "Enter Animal Name"
  animal_array<<gets.chomp
end

puts "Sorted #{animal_array.uniq.sort()}"
puts "Value Count #{animal_array.count()}"
puts "Reverse #{animal_array.uniq.reverse()}"
