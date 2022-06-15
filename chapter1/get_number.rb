# Get Number Game
# Written by: Sovetbek

# Получение имени игрока и вывод приветствие 
puts "Welcome to 'Get My Number!'"
print "What's your name? "
input = gets.capitalize.chomp
puts "Welcome, #{input}!"

# Сохранение случайного числа
puts "I've got  a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100)+1

# Отслеживание попыток
num_guesses = 0 

# Признак продолжение игры
guessed_it = false 
until num_guesses == 10 || guessed_it
    puts "You've got #{10 - num_guesses} guesses left."
    print "Make a guess: "
    guess = gets.to_i 

    num_guesses += 1

    # Сравнение введенного числа
    # и вывод соответсвующего сообщения.
    if guess < target 
        puts "Oops. Your guess was LOW."
    elsif guess > target 
        puts "Oops. Your guess was HIGH."
    elsif guess == target 
        puts "Good job, #{input}!"
        puts "You guessed my number in #{num_guesses} guesses!"
        guessed_it = true
    end
end 

# Если попыток не осталось, сообщить загаданное число.
unless guessed_it
    puts "Sorry. You didn't get my number. (It was #{target}.)"
end

