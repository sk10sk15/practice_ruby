###########
# dev用
###########

#Dateクラスは組み込みクラスとなっていないため、使うにはまず宣言しないといけない。
require 'date'

# 年月
#starftimeにフォーマット文字列を使って、文字列を出力できる。
#%B だと月の名称(January, February ... )　%b だとその省略名(Jan, Feb ... ))
#%Y は、西暦を表す数 todayなら、2020
m = Date.today.strftime("%B")
y = Date.today.strftime("%Y")

#配列を作って、zに代入する。
z = [m , y]
#zを出力する。その際にjoinメソッドで文字列を結合させる。引数は空白にして区切りを作る。
#centerメソッドは、引数の長さをもつ新しい文字列を作成し、文字列をその中央に置いて左右を空白で埋める。カレンダー上の真ん中に来るような引数は20だった。
puts z.join(' ').center(20)

# 曜日
#%記法と呼ばれている。%wで配列を作ることができる。配列の要素はスペース区切りで指定する。
#このままだと縦に出力されてしまうので、joinで結合させる。
puts %w[Su Mo Tu We Th Fr Sa].join(' ')

# 1日と末日
#Date.newの引数は、(年,月,日)の順番
firstday = Date.new(Date.today.year, Date.today.month, 1)
#末日はdayの部分に -1 と書くとできる。
lastday = Date.new(Date.today.year, Date.today.month, -1)
#1~末日まで。map(何か|ブロック)ブロック（指定しているもの）の戻り値（結果）を作成して返す。
#rjstメソッドは、centerと同じように、引数の長さをもつ文字列を作成する。r=右側なので、右詰で左側を空白で埋める。つまりカレンダーのために２文字分スペースを作っている。
days = (1..lastday.day).map{ |n| n.to_s.rjust(2)}

#firstday.wdayの数字は0〜
#Array.new(1, ' ' )の数字は1〜
#だから空白がたまたま合う。

#flatten：同じ次元にする。[ ] を外す。
#each_slice：n個区切りでArrayを作っている。
days = Array.new(firstday.wday, '  ').push(days).flatten.each_slice(7).to_a


days.each do |week|
  puts week.join(' ')
end

