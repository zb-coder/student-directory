def input_students
    puts "Please enter the name of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
        # add the student hash to the array
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        # get another name from the user
        name = gets.chomp
    end
    # return the array of students
    students
end

def first_initial
    puts "Please enter students whose name begins with a specific letter"
    initial = gets.chomp
    initial
end
    
    
def print_header
    puts "The students of Villians Academy"
    puts "-------------"
end

def print_students(students, initial)
    students.each.select do 
        |student| student[:name].chars.first == initial
    end
end

def print(students)
    students.each_with_index do |student, index|
        puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end


students = input_students
#nothing happens until we call the methods
initial = first_initial
initial_students = print_students(students, initial)
print_header
print(students)
print(initial_students)
print_footer(students)