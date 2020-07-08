# Block 可以突破 scope 的限制
# 看看執行後會印出 Hello 還是 Goodbye

def my_method
  x = "Goodbye"
  yield
end

x = "Hello"

my_method do
  puts x
end

# 完整資料可以看
# https://5xruby.tw/posts/discover-ruby-block/
