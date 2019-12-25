###########
# dev用
###########


require 'date'
# 年月
m = Date.today.strftime("%B")
y = Date.today
z = [m , y.year]
puts z.join(' ')
# 曜日
puts %w[Sun Mon Tue Wed Thu Fri Sat].join(' ')

# 1日と末日
firstday = Date.new(Date.today.year, Date.today.month, 1)
lastday = Date.new(Date.today.year, Date.today.month, -1)
for days in 1..lastday.day
  puts days
end 
