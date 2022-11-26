# frozen_string_literal: true

def process(selection)
  case selection
  when "1"
    student_input
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students_menu
  when "9"
    exit
  else
    puts "I don't know what you meant, try again."
  end
end

def interactive_menu
  loop do
    print_menu
    process($stdin.gets.chomp)
  end
end
