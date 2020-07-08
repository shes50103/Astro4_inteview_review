# lambda 的 return 是從 lambda return
# proc 則是從定義 proc 的 scope return

def lambda_double
  la = lambda { return 10 }
  result = la.call
  return result * 2
end

def proc_double
  pr = Proc.new { return 10 }
  result = pr.call
  return result * 2  # unreachable code!
end

puts lambda_double # => 20
puts proc_double   # => 10

# 完整資料可以看
# https://5xruby.tw/posts/discover-ruby-block/
