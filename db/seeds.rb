include Faker

#Create Users

  5.times do
    user = User.create!(
    email:        Faker::Internet.email,
    password:     Faker::Internet.password,
    confirmed_at: Time.now
    )
  end
  users = User.all

  50.times do
    item = Item.create!(
      user:  users.sample,
      name:  Faker::Lorem.sentence
    )
  end

puts "Seed finished"
puts "#{User.count} users created."
puts "#{Item.count} items created."