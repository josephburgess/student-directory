# frozen_string_literal: true

def save_students
  puts "\nEnter a filename:".green
  filename = $stdin.gets.strip
  filename = filename == '' ? 'student.csv' : filename
  CSV.open(filename, 'w') do |csv|
    @students.each do |student|
      csv << [
        student[:name],
        student[:age],
        student[:birthplace],
        student[:subject],
        student[:cohort]
      ]
    end
  end
  puts "\nš¾ Saved #{@students.count} student#{@students.count == 1 ? '' : 's'} to ".green +
         filename.to_s.red
end

def append_students
  puts "\nEnter a filename:".green
  filename = $stdin.gets.strip
  if File.exist?(filename)
    CSV.open(filename, 'a') do |csv|
      @students.each do |student|
        csv << [
          student[:name],
          student[:age],
          student[:birthplace],
          student[:subject],
          student[:cohort]
        ]
      end
    end
    puts "\nš¾ Saved #{@students.count} student#{@students.count == 1 ? '' : 's'} to ".green +
           filename.to_s.red
  else
    puts "Sorry, '#{filename}' does not exist".red
  end
end

def load_students(filename)
  File.open(filename) do |file|
    CSV.foreach(file) do |line|
      name, age, birthplace, subject, cohort = line
      @students << {
        name: name,
        age: age,
        birthplace: birthplace,
        subject: subject,
        cohort: cohort
      }
    end
  end
  puts "\nš Loaded #{@students.count} student#{@students.count == 1 ? '' : 's'} from ".green +
         filename.to_s.red
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?

  check_filename(filename) ? load_students(filename) : exit
end

def load_students_menu
  puts "\nš Enter a filename to load".green
  filename = $stdin.gets.strip
  load_students(filename) if check_filename(filename)
end

def check_filename(filename)
  if File.exist?(filename)
    puts "Ok, loading from '#{filename}'...".green
    true
  else
    puts "Sorry, '#{filename}' does not exist".red
    false
  end
end
