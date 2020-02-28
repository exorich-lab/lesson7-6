puts "Загадано число от 0 до 15, отгадайте какое с 3 попыток?"
lucky_number = rand (15)
count = 1
until count > 3 do
  choice = gets.to_i
  warm_diff = (lucky_number - choice).abs
  if lucky_number == choice
    puts "Ура, вы выиграли c " + count.to_s + " попытки!"
  elsif lucky_number > choice && count < 3
    puts "Загаданное число больше"
    if warm_diff <= 2
      puts "Горячо"
    else
      warm_diff >= 3
      puts "Холодно"
    end
  elsif lucky_number < choice && count < 3
    puts "(Загаданное число меньше)"
    if warm_diff <= 2
      puts "Горячо"
    else
      warm_diff >= 3
      puts "Холодно"
    end
  else lucky_number != choice && count == 3
    puts "Вы проиграли! " + "Было загаданно число: " + lucky_number.to_s
  end
  count += 1
end
