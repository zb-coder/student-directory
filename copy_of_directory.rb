def input_students
    puts "Please enter the name of the students"
    puts "To finish, just hit return twice"
    # create an empty array
    students = []
    # get the first name
    name = gets.chomp
    # while the name is not empty, repeat this code
    while !name.empty? do
        puts "please enter the students cohort"
        cohort = gets.chomp.to_sym
        # add the student hash to the array
        students << {name: name, cohort: cohort}
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
        puts "#{a + 1}. #{students[a][:name]} (#{students[a][:cohort]} cohort)"
        a += 1
        
    grouped_by_cohort = Hash.new
    
    students.each do |student|
        if grouped_by_cohort[student[:cohort]] == nil
            grouped_by_cohort[student[:cohort]] = []
        end
    grouped_by_cohort[student[:cohort]].push(student[:name])
    end

grouped_by_cohort.each do |cohort, name|
    puts "#{cohort} cohort"
    puts name
    puts "\n"
    end
    end
end



def print_footer(students)
    puts "Overall, we have #{students.count} great students"
end


students = input_students
#nothing happens until we call the methods
print_header
print(students)
print_footer(students)