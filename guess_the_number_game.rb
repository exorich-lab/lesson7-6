puts "Загадано число от 0 до 15, отгадайте какое с 3 попыток?"
lucky_number = rand (15)
count = 1
puts lucky_number
while count < 4 do
  choice = gets.chomp.to_i
  if lucky_number == choice
    puts "Ура, вы выиграли c " + count.to_s + " попытки!"
    abort
  elsif lucky_number > choice
    if count == 3
      puts "Вы проиграли! " + "Было загаданно число: " + lucky_number.to_s
      abort
    else
    puts "Тепло (нужно больше)"
    end
  else lucky_number < choice
  if count == 3
    puts "Вы проиграли! " + "Было загаданно число: " + lucky_number.to_s
    abort
  else
    puts "Тепло (нужно меньше)"
  end
  end
  count += 1
end