require 'date'

year = ARGV[0].to_i
month = ARGV[1].to_i
m = Date.new(year, month, 1).strftime("%B")
y = Date.new(year, month, 1).strftime("%Y")

z = [m , y]

puts z.join(' ').center(20)

# February 2019

puts %w[Su Mo Tu We Th Fr Sa].join(' ')

firstday = Date.new(year, month, 1)
lastday = Date.new(year, month, -1)

days = (1..lastday.day).map{ |n| n.to_s.rjust(2)}

weeks = Array.new(firstday.wday, '  ').push(days).flatten.each_slice(7).to_a

weeks.each do |week|
  puts week.join(' ')
end