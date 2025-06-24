#To-Do List App

def to_do_list(array)
  array.each_with_index do |todo, index|
    puts "#{index + 1}. #{todo}"
  end
end

def add_to_do(array)
  puts "Enter a to-do:"
  todo = gets.chomp
  array << todo
end

def delete_to_do(array)
  puts "Enter the number of the to-do you want to delete:"
  number = gets.chomp.to_i
  array.delete_at(number - 1)
end

def mark_completed(array)
  puts "Enter the number of the to-do you want to mark as completed:"
  number = gets.chomp.to_i
  array[number - 1] = "✅ #{array[number - 1]}"
end

def mark_incomplete(array)
  puts "Enter the number of the to-do you want to mark as incomplete:"
  number = gets.chomp.to_i
  array[number - 1] = array[number - 1].gsub("✅ ", "")
end

to_dos = []

loop do
  puts "To-Do List App"
  puts "1. View to-dos"
  puts "2. Add to-do"
  puts "3. Delete to-do"
  puts "4. Mark to-do as completed"
  puts "5. Mark to-do as incomplete"
  puts "6. Exit"

  choice = gets.chomp

  case choice
  when "1"
    to_do_list(to_dos)
  when "2"
    add_to_do(to_dos)
  when "3"
    delete_to_do(to_dos)
  when "4"
    mark_completed(to_dos)
  when "5"
    mark_incomplete(to_dos)
  when "6"
    break
  else
    puts "Invalid choice. Please try again."
  end
end

puts "Goodbye!"