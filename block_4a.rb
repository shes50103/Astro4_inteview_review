# lambda 的 return 是從 lambda return
# proc 則是從定義 proc 的 scope return

def double(callable_object)
  callable_object.call * 2
end

# return from lambdas
la = lambda { return 10 }

# return from the scope which defined the procs(main)
pr = proc { return 10 }

puts double(la) # 20
puts double(pr) # LocalJumpError...

# 完整資料可以看
# https://5xruby.tw/posts/discover-ruby-block/
