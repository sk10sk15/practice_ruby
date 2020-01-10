require 'date'
# Rubyの話
# コマンドライン引数について調べてみる。
# ARGVを使ったりするのかな
# year:2020, month:6 の引数を与えるとして、どうやって年を認識する？
# 今Date.today.yearとなっているものを、
# Date.new(ARGV[0], ARGV[1), 1)
# Date.new(2020, 6, 1)的な？
# 使い方がわかっていない。

year = ARGV[0]
month = ARGV[1]
y = Date.new(year, month, 1)
puts y