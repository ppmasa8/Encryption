puts "Please typing something."
words = gets.chomp.chars
ans   = []

words.each do |str|
  ans << ((((str.ord - 97) - 11) % 26) + 97).chr
end

puts "#{ans.join("")}"
