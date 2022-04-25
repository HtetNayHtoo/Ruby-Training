require 'date'

for i in 1..5
date5 = Date.today - i
puts date5.strftime("%A")
end