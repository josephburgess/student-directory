# frozen_string_literal: true

def print_menu
  puts "\n1. Input students".green
  puts '2. Print current students'.green
  puts '3. Save student list to a file'.green
  puts '4. Load student list from a file'.green
  puts "9. Exit\n".red
end

def print_students(list)
  student_number = list.size
  return 'No students' if student_number.zero?

  index = 0
  while index < student_number
    student = list[index]
    details = student.map { |key, value| "#{key}: #{value.green}" }
    puts "#{index + 1}. ".red + details.join(', ')
    index += 1
  end
end

def print_header
  puts ' '
  puts ' The students of Makers Academy '.center(50, '*').red
  puts '--------------------------------------------------'.yellow
end

def show_students
  filtered_list = filter_questions
  print_header
  print_students(filtered_list)
  print_footer
end

def print_footer
  puts "\nOverall, we have #{@students.count} great student#{@students.count == 1 ? '' : 's'}".yellow
end
