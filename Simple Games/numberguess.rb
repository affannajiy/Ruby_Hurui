#Number Guessing Game

puts "Number Guessing Game"
puts "Enter a number!"

number = rand(1..1000)
guess = 0

loop do 
  print "Your guess: "
  guess = gets.chomp.to_i
  guess += 1

  if guess == number
    puts "You win!"
    puts "Number of guesses: #{guess}"
    break
  elsif guess > number
    puts "Too high!"
  else
    puts "Too low!"
  end
end

puts "Thanks for playing!"