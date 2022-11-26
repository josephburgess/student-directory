# frozen_string_literal: true

def ask_name
  puts "Name:".green
  $stdin.gets.gsub!(/$\n/, "")
end

def ask_questions(name)
  student = {}
  student[:name] = name
  questions = %w[age birthplace subject cohort]
  questions.each do |question|
    puts "#{question.capitalize}:".green
    answer = $stdin.gets.gsub!(/$\n/, "")
    answer = "unknown" if answer == ""
    student[question.to_sym] = answer
  end
  student
end

def collect_info
  name = ask_name
  if name != ""
    student = ask_questions(name)
    @students << student
    puts "We now have #{@students.count} student#{@students.count == 1 ? "" : "s"} registered.".red
  else
    puts "No students entered"
  end
end

def check_finished
  puts "Finished? y/n".green
  finished = $stdin.gets.gsub!(/$\n/, "")
  until %w[y n].include?(finished)
    puts "Finished? y/n".green
    finished = $stdin.gets.gsub!(/$\n/, "")
  end
  finished == "y"
end

def student_input
  puts "Please enter student details".green
  stop = false
  until stop
    collect_info
    stop = check_finished
  end
end
