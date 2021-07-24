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
        cohort = gets.chomp
         if cohort == ""
            cohort = "Not assigned"
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

def group_cohort(students)
  groups = {}
  students.each do |student|
    cohort = student[:cohort].to_sym
    if groups[cohort] == nil
      groups[cohort] = []
    end
    groups[cohort].push(student)
  end
  groups
end


def print(students)
    students.each do |cohort, cohort_students|
    puts "#{cohort.capitalize} Cohort"
    cohort_students.each_with_index do |identity, index|
        puts "#{index + 1}. #{identity[:name]}"
        puts "-hobby: #{identity[:name]}"
        puts "-country_of_birth: #{identity[:country_of_birth]}"
        puts "-height: #{identity[:height]}"
    end
end



def print_footer(students)
    if students.count == 1
        puts "Overall, we have 1 great student" 
    else 
        puts "Overall, we have #{students.count} great students"
    end
end
end


students = input_students
#nothing happens until we call the methods
length = print_students(students)
grouped_students = group_cohort(length)
print_header
print(grouped_students)
print_footer(students)