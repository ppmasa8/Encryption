puts "暗号化したいアルファベットを入力してください"

words = gets.chomp
caesar_num = 3 # ずらしたい数
puts "before:#{words}"

crypt = []
words.each_char do |str|
  crypt << (((str.ord - 97) - caesar_num) % 26 + 97).chr
end
puts "after :#{crypt.join}"
