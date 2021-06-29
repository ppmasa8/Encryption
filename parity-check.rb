def parity_check(num)
# 偶数パリティ
  num = num + "1" if num.count("1").odd?

# データを壊す
  if rand(50) % 3 == 0
    num = (num.to_i(2) + 17).to_s(2)
    @destruct = true
  end

  if num.count("1").even?
    msg = "Ensure data struct"
  else
    msg = "Error data exists"
  end
  msg
end

@destruct = false
num = rand(100).to_s(2)
puts num
puts parity_check(num)
puts @destruct
