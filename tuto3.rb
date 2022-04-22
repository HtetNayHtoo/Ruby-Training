
loop do
  puts "Enter First Number"
  num1 = gets.chomp()
  
  puts "Choose Operator EX: +,-,x,÷"
  opr = gets.chomp()
  
  puts "Enter Second Number"
  num2 = gets.chomp()
  
  if opr == "+"
    ans = num1.to_i + num2.to_i
  elsif opr == "-"
    ans = num1.to_i - num2.to_i
  elsif opr == "x"
    ans = num1.to_i * num2.to_i
  else opr == "÷"
    ans = num1.to_i / num2.to_i
  end

  puts "answer = #{ans}"
  
  puts "stop/continue"
  decis = gets.chomp()

  if decis == "stop"
    break
  end
end


 
  





