require 'faker'

10.times do |i|
  User.create!
  	(first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.paragraph,
    email: Faker::Internet.email,
    age: Faker::Number.within(range: 18..60),
    city: City.all.sample)
end

10.times do |i|
	City.create!(name: Faker::Address.city)
end

20.times do |i|
	Gossip.create!
	(user_id: User.all.sample.id,
	title: Faker::Lorem.sentence,
	content: Faker::Lorem.paragraph)
end 

10.times do |i|
	 Tag.create!(title: Faker::Lorem.word)
end

10.times do |i|
  PrivateMessage.create!
  	(content: Faker::Lorem.paragraph,
    recipient_id: User.all.sample.id,
    sender_id: User.all.sample.id)
end

puts "all good !!!!!"