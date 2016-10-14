# In this program, a structure, student is created.
#
# This structure has three members: name (string), roll (integer) and marks (float).
#
# Then, a structure variable s is created to store information and display it on the screen.

Students = Struct.new(:student_name, :age, :roll, :section, :marks)

def student_info
  puts("Enter your name ? ")
  stud_name = gets.chomp
  puts("Enter you age ? ")
  stud_age = gets.chomp
  puts("Enter you roll number ? ")
  stud_roll = gets.chomp
  puts("Enter you section ? ")
  stud_section = gets.chomp
  puts("Enter you marks ? ")
  stud_marks = gets.chomp
  student1 = Students.new(stud_name, stud_age, stud_roll, stud_section, stud_marks)
  student1.each_pair {|name, value| puts("#{name} => #{value}")}
end

student_info



