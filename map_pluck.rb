# 在 Rails 中 User Model 有 email 欄位


# 單次使用

User.pluck(:email)
# SELECT "users"."email" FROM "users"
# 僅撈取 users 表中的 email 欄位，並且直接轉成陣列

User.all.map(&:email)
# SELECT "users".* FROM "users"
# 撈取 users 表中的所有欄位，轉成 ActiveRecord 再轉成陣列

User.select('email').map(&:email)
# SELECT "users"."email" FROM "users"
#  僅撈取 users 表中的 email 欄位，轉成 ActiveRecord 再轉成陣列


# 多次使用

3.times do
  User.pluck(:email)
end

# SELECT "users"."email" FROM "users"
# SELECT "users"."email" FROM "users"
# SELECT "users"."email" FROM "users"
# 每次 pluck 都有 SQL query 產生

users = User.all

3.times do
  users.map(&:email)
end
# SELECT "users".* FROM "users"
# 僅 User.all 產生一次 SQL query
# map 就是跟記憶體的 ActiveRecord 要資料了
