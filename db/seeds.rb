
# Initialize Admin User
if User.find_by(email: "admin@test.com").nil?
  u = User.new
  u.email = "admin@test.com"
  u.password = "123456"
  u.password_confirmation = "123456"
  u.is_admin = true
  u.save
  puts "Admin 已經建立好了，帳號為#{u.email}, 密碼為#{u.password}"
else
  puts "Admin 已經建立過了，腳本跳過該步驟。"
end


# Initialize Product

Product.create!(title: "QC-35",
  description: "耳機",
  price: 2800,
  quantity: 5,
  image: open("https://images-cn.ssl-images-amazon.com/images/I/41bVSMLUllL._AC_UL320_SR320,320_.jpg")
  )

Product.create!(title: "Iphone7",
  description: "手機",
  price: 5000,
  quantity: 5,
  image: open("https://images-cn.ssl-images-amazon.com/images/I/51q3gdJGenL._SL800_.jpg")
  )

Product.create!(title: "Cherry Keyboard",
  description: "G80-3000鍵盤",
  price: 2800,
  quantity: 5,
  image: open("https://images-cn.ssl-images-amazon.com/images/I/41LN-bXtA7L._AC_UL320_SR320,320_.jpg")
  )
