# encoding: utf-8

# Массив из вариантов выбора
names = ['Rock', 'Scissors', 'Paper']

# Спрашиваем у пользователя про его выбор
puts 'Choose: 0 - Rock, 1 - Scissors, 2 - Paper'

# Записываем выбор пользователя из консоли, преобразуя в число
user_choice = gets.to_i

# Выбираем случаное число от 0 до 3 (не включительно)
computer_choice = rand(3)

# Выводим выбор компьютера через индексацию (индекс - вытащенное случайное число)
puts 'Computer chose: ' + names[computer_choice]

# Выводим выбор пользователя
puts 'You chose: ' + names[user_choice]

# в наших числах логика игры такая:
# Rock (names[0]) бьет Scissors (names[1]), 
# Scissors (name[1]) бьет Paper (name[2]), 
# Paper (name[2]) бьет Rock (name[0])

# Выбор пользователя == выбор компьютера
if user_choice == computer_choice
  puts 'Draw'

# У пользователя 0-Rock, у компьютера 1-Scissors
elsif user_choice == 0 && computer_choice == 1 
  puts 'You are winner!'

# У пользователя Scissors, у компьютера Paper
elsif user_choice == 1 && computer_choice == 2 # у вас Scissors И у компа Paper
  puts 'You are winner!'

# У пользователя Paper, у компьютера Rock
elsif user_choice == 2 && computer_choice == 0 # Paper И Rock
  puts 'You are winner!'

# В остальных случаях
else 
  puts 'You are loser)'
end