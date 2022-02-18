#Create user

customer = User.create(
  first_name: 'customer',
  last_name: 'User',
  email: 'customer@user.com',
  password: 'password123',
  password_confirmation: 'password123'
)


#Create Region

5.times.each do
  Region.create(
    title: Faker::Address.city,
    country: Faker::Address.country,
    currency: Faker::Currency.code,
    tax: 0.07
  )
end

# Create Products

 Region.all.each do |region|
  5.times.each do
    Product.create(
      region: region,
      title: Faker::Game.title,
      description: "#{Faker::Game.genre} from #{Faker::Game.platform}",
      image_url: "https://picsum.photos/200",
      price: Faker::Number.decimal(r_digits: 2),
      sku: Faker::Code.imei,
      stock: 10,
    )
  end
end
