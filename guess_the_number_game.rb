puts "Загадано число от 0 до 15, отгадайте какое с 3 попыток?"
lucky_number = rand (15)
count = 0
until count == 3 do
  count += 1
  choice = gets.to_i
  warm_diff = (lucky_number - choice).abs
  if warm_diff <= 2
    temp = " Горячо!"
  else warm_diff >= 3
    temp = " Холодно!"
  end
  if lucky_number > choice && count != 3
    puts "Загаданное число больше." + temp.to_s
  elsif lucky_number < choice && count != 3
  puts "Загаданное число меньше." + temp.to_s
  elsif lucky_number == choice
    puts "Ура, вы выиграли c " + count.to_s + " попытки!"
  else
    puts "Вы проиграли! " + "Было загаданно число: " + lucky_number.to_s
  end
end
