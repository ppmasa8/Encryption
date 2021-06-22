puts "入力してください(3の倍数の文字列で)"
words = gets.chomp.chars
if words.size % 3 != 0
  puts "転置できません"
  exit
end
ans = words.each_slice(3).to_a.transpose.flatten

puts "#{ans.join("")}"
