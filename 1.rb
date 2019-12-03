#Приветствие и запрос имени puts "Добро пожаловать в игру 'Угадай число'" puts "Как тебя зовут?" username = gets.chomp puts "Добро пожаловать в игру, #{username}!"

#Генерация рандомного числа number = rand(101) puts "Я загадал случайное число от 0 до 100" puts "Сможешь угадать его?"

#Счетчик кол-ва попыток num_guesses = 0

#Условие продолжения игры guessed_it = false

until num_guesses == 10 || guessed_it

#Предлагаем игроку сделать попытку puts "Сделай попытку: " guess = gets.to_i num_guesses += 1

#Сравниваем введенное число с загаданным if guess == number puts "Поздравляю, #{username}, ты отгадал мое число" puts "Число было отгадано за #{num_guesses} попыток" guessed_it = true elsif guess > number puts "Твое число слишком велико" elsif guess < number puts "Твое число меньше загаданного" end puts "Осталось попыток: #{10 - num_guesses}" end

#Вывод сообщения при проигрыше unless guessed_it puts "Извини, ты не угадал мое число.(Это число было #{number})" end

puts "Спасибо за игру, #{username}!"
