def save_students
  puts "\nEnter a filename:".green
  filename = $stdin.gets.strip
  filename = filename == "" ? "student.csv" : filename
  CSV.open(filename, "w") do |csv|
    @students.each do |student|
      csv << [
        student[:name],
        student[:age],
        student[:birthplace],
        student[:subject],
        student[:cohort],
      ]
    end
  end
  puts "\n💾 Saved #{@students.count} student#{@students.count == 1 ? "" : "s"} to".green +
         filename.to_s.red
end

def load_students(filename)
  File.open(filename) do |file|
    CSV.foreach(file) do |line|
      name, age, birthplace, subject, cohort = line
      @students << {
        name: name,
        age: age,
        birthplace: birthplace,
        cohort: cohort,
      }
    end
  end
  puts "\n📋 Loaded #{@students.count} student#{@students.count == 1 ? "" : "s"} to".green +
         filename.to_s.red
end

def try_load_students
  filename = ARGV.first
  return if filename.nil?
  check_filename(filename) ? load_students(filename) : exit
end

def load_students_menu
  puts "\n📝 Enter a filename to load".green
  filename = $stdin.gets.strip
  load_students(filename) if check_filename(filename)
end

def check_filename(filename)
  if File.exists?(filename)
    puts "Ok, loading from '#{filename}'...".green
    true
  else
    puts "Sorry, '#{filename}' does not exist".red
    false
  end
end
