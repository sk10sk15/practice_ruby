require 'date'

puts("あいうえお")

a = Date.new(1993, 2, 24)
puts a

# 与えられた日付表現を解析し、その情報に基づいて日老けオブジェクトを生成する
b = Date.parse('1993-02-24')
# 年だけ取ってきたい時
puts b.year

# 10日分追加できる
b += 10
puts b


c = Date.new(1993, 2, 24).wday
puts c


tomorrow = Date.new(1993, 2, 25)
d = tomorrow.wday
puts d


e = Date.new(2019, 12, 25).strftime("%a")
puts e