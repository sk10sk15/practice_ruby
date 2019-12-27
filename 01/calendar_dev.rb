###########
# dev用
###########


require 'date'
# 年月
m = Date.today.strftime("%B")
y = Date.today.strftime("%Y")
z = [m , y]
puts z.join(' ').center(25)
# 曜日
puts %w[Sun Mon Tue Wed Thu Fri Sat].join(' ')

# 1日と末日
firstday = Date.new(Date.today.year, Date.today.month, 1)
lastday = Date.new(Date.today.year, Date.today.month, -1)
days = (1..lastday.day).map{ |n| n.to_s.rjust(2)}
days = Array.new(firstday.wday, '  ').push(days).flatten.each_slice(7).to_a
puts days
