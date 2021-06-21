puts "暗号化したい文字を入力してください"
words = gets.chomp.chars

rev = words.reverse
rev_num = []
rev.each{|str| rev_num << str.ord }

ans = []

(0...words.size).each do |i|
  ans << (((((words[i].ord - 97) + rev_num[i]) * i) % 26) + 97).chr
end

puts "#{ans.join("")}"
