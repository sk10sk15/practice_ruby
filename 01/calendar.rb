###########
# 練習用
###########

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

# aだと水曜日って出る, wだと数字になってしまう
e = Date.new(2019, 12, 25).strftime("%a")
puts e

# aだと水曜日って出る, wだと数字になってしまう
a = Date.new(2019, 12, 22).strftime("%a")
b = Date.new(2019, 12, 23).strftime("%a")
c = Date.new(2019, 12, 24).strftime("%a")
d = Date.new(2019, 12, 25).strftime("%a")
e = Date.new(2019, 12, 26).strftime("%a")
f = Date.new(2019, 12, 27).strftime("%a")
g = Date.new(2019, 12, 28).strftime("%a")
h = [a, b, c, d, e, f, g]
puts h.join(" ")



# joinを入れると改行なしになる？
puts %w[Sun Mon Tue Wed Thu Fri Sat].join(' ')



# 1日と末日
firstday = Date.new(Date.today.year, Date.today.month, 1)
lastday = Date.new(Date.today.year, Date.today.month, -1)
puts firstday.day
puts lastday.day
# 1日と末日の曜日
first_wday = firstday.strftime("%a")
puts first_wday
last_wday = lastday.strftime("%a")
puts last_wday