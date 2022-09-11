def input_students
  puts "Please enter the names of the students"
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

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  if students.length() > 0
    students.each_with_index do |student, index|
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)".center(5)
    end
  else
    puts "We have no students!"
  end
end

def print_footer(students)
  students.count != 1 ? (puts "Overall, we have #{students.count} great students") : (puts "Overall, we have only a single great student")
end

#nothing will happen until we call the methods
students = input_students
print_header
print(students)
print_footer(students)
