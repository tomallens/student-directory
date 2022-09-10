# 5. Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc.
# 7. In the input_students method the cohort value is hard-coded. How can you ask for both the name and the cohort?
#    What if one of the values is empty? Can you supply a default value? The input will be given to you as a string? 
#    How will you convert it to a symbol? What if the user makes a typo?
#10. We've been using the chomp() method to get rid of the last return character. Find another method among those provided by the
#    String class that could be used for the same purpose (although it will require passing some arguments).
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
# create an empty array
  students = []
# get the first name
  puts "First, a name:"
  name = gets.strip
  puts "Age:"
  age = gets.strip
  puts "Nationality:"
  nationality = gets.strip
  puts "and their cohort:"
  cohort = gets.strip.downcase
# while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, age: age, nationality: nationality, cohort: cohort}
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
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# 1. We're using the each() method to iterate over an array of students. 
#    How can you modify the program to print a number before the name of each student, e.g. "1. Dr. Hannibal Lecter"? 
#    Hint: look into each_with_index()
# 6. Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned.
def print_each(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)".center(5)
  end
end

# 8. Once you complete the previous exercise, change the way the users are displayed: print them grouped by cohorts.
#    To do this, you'll need to get a list of all existing cohorts (the map() method may be useful but it's not the only option),
#    iterate over it and only print the students from that cohort.
def print_each(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)".center(5)
  end
end

# 2. Modify your program to only print the students whose name begins with a specific letter.
# 3. Modify your program to only print the students whose name is shorter than 12 characters.
def print_exclusive(students)
  students.each_with_index do |student, index|
    if student[:name].start_with?("A") && student[:name].length < 12
      puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
  end
end

# 4. Rewrite the each() method that prints all students using while or until control flow methods (Loops).
def print_while(students)
  counter = 0
  while counter < students.length
    puts "#{counter + 1}.  #{students[counter]}"
    counter += 1
  end
end
  
# 9. Right now if we have only one student, the user will see a message "Now we have 1 students", whereas it should be 
#    "Now we have 1 student". How can you fix it so that it uses the singular form when appropriate and plural form otherwise?
def print_footer(students)
  students.count > 1 ? (puts "Overall, we have #{students.count} great students") : (puts "Overall, we have only a single great student")
end

#nothing will happen until we call the methods
students = input_students
print_header
print_each(students)
print_footer(students)
