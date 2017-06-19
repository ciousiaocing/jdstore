
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

Product.create!(
  title: "二手鍋",
  description: "鍋子",
  price: 550,
  quantity: 50,
  image: open("#{Rails.root}/app/assets/images/item_1.jpg")
  )


Product.create!(
  title: "平底鍋",
  description: "鍋子",
  price: 750,
  quantity: 40,
  image: open("#{Rails.root}/app/assets/images/item_2.jpg")
  )

Product.create!(
  title: "鐵製茶壺",
  description: "壺",
  price: 450,
  quantity: 45,
  image: open("#{Rails.root}/app/assets/images/item_3.jpg")
  )


Product.create!(
  title: "茶壺",
  description: "壺",
  price: 250,
  quantity: 25,
  image: open("#{Rails.root}/app/assets/images/item_4.jpg")
  )

Product.create!(
  title: "八角點心盤",
  description: "盤子",
  price: 150,
  quantity: 15,
  image: open("#{Rails.root}/app/assets/images/item_5.jpg")
  )


Product.create!(
  title: "點心盤",
  description: "盤子",
  price: 80,
  quantity: 80,
  image: open("#{Rails.root}/app/assets/images/item_6.jpg")
  )

Product.create!(
  title: "木盤",
  description: "盤子",
  price: 125,
  quantity: 15,
  image: open("#{Rails.root}/app/assets/images/item_7.jpg")
  )


Product.create!(
  title: "醬油碟",
  description: "碟子",
  price: 20,
  quantity: 20,
  image: open("#{Rails.root}/app/assets/images/item_8.jpg")
  )
