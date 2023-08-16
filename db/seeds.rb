require 'faker'

20.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save!
end

40.times do
  review = Review.new(
    content: Faker::Restaurant.review,
    rating: rand(0..5),
    restaurant_id: rand(1..20)
  )
  review.save!
end

puts 'Finished!'
