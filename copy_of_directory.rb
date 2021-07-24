def input_students
    puts "Please enter the name of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
        puts "please enter the cohort of the student"
        cohort = gets.chomp
        if cohort == ""
            puts "N/A"
        else
            cohort = cohort.to_sym
        end
        
        puts "please enter a hobby of the student"
        hobby = gets.chomp 
        
        puts "please enter the country of birth of the student"
        country_of_birth = gets.chomp
        
        puts "please enter the height of the student"
        height = gets.chomp
        # add the student hash to the array
        students << {name: name, cohort: cohort, hobby: :hobby, country_of_birth: :country_of_birth, height: :height}
        puts "Now we have #{students.count} students"
        # get another name from the user
        name = gets.chomp
    end
    # return the array of students
    students
end
    
def print_students(students)
    students.each.select do
        |student| student[:name].length <= 12
    end
end
    
def print_header
    puts "The students of Villians Academy"
    puts "-------------"
end

def print(students)
    a = 0
    while a < students.length
        puts "#{a + 1}. #{students[a][:name]}".center(15, "-")
        puts "-hobby: #{students[a][:hobby]}".center(20)
        puts "-country_of_birth: #{students[a][:country_of_birth]}".center(20)
        puts "-height: #{students[a][:height]}".center(20)
        puts "-cohort: #{students[a][:cohort]}".center(20)
        a += 1
    end
end

def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end


students = input_students
#nothing happens until we call the methods
length = print_students(students)
print length
print_header
print(students)
print_footer(students)