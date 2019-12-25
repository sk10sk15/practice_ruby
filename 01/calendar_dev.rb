require 'date'

# aだと水曜日って出る, wだと数字になってしまう
e = Date.new(2019, 12, 25).strftime("%a")
puts e