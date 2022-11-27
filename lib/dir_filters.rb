# frozen_string_literal: true

def filter_by_letter(list)
  puts 'Input first letter to filter by name'.green
  puts 'Alternatively, for all students, hit return'.green

  input = $stdin.gets.gsub!(/$\n/, '')
  new_list = list
  if input != ''
    new_list =
      list.select { |student| student[:name][0].downcase == input.downcase }
  end
  new_list
end

def filter_category(list, input)
  new_list = []
  list.map do |student|
    filtered_students = {}
    filtered_students[:name] = student[:name]
    filtered_students[input.to_sym] = student[input.to_sym]
    new_list << filtered_student
  end
  new_list
end

def search_category(list)
  puts 'Choose a category?'.green
  puts "age | birthplace | subject | cohort\n".yellow
  puts 'Alternatively, for all categories hit return.'.green
  input = $stdin.gets.gsub!(/$\n/, '')
  new_list = list
  new_list = filter_category(list, input) if input != 0 &&
    %w[age birthplace subject cohort].include?(input)
  new_list
end

def filter_questions
  letter_list = filter_by_letter(@students)
  search_category(letter_list)
end
