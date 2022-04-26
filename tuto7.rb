class Person 
    def initialize(name)
        @user_name = name
        puts "This person name is #{@user_name}"
    end
end

class Student
    def initialize(sname, roll)
        @user_name = sname
        @user_roll = roll
    end

    def print_name
        puts "This person name is :#{@user_name}"
    end

    def print_roll
        puts "This is your roll no - #{@user_roll} "
    end
end


puts "Choose student/person"
sp = gets.chomp

if sp.downcase == "person"
    puts "Enter Your Name"
    name = gets.chomp

    person = Person.new(name) 

elsif sp.downcase == "student"
    puts "Enter Your Name"
    sname = gets.chomp
    puts "Enter Your roll no"
    roll = gets.chomp

    student = Student. new(sname, roll)
    student.print_name()
    student.print_roll()
else
    puts "Not an Option"
end





