# procs 處理參數的方式比較有彈性
# lambdas 則是比較嚴格

puts "以下是 proc"
pr = proc {|a,b| [a,b]}
p pr.call('a', 'b')
p pr.call('a')
p pr.call('a', 'b', 'c')

puts "以下是 lambda"
la = lambda {|a,b| [a,b]}
p la.call('a', 'b')
p la.call('a')
p la.call('a', 'b', 'c')

# 完整資料可以看
# https://5xruby.tw/posts/discover-ruby-block/
