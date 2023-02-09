require 'faker'
city = ["Paris", "Marseille", "Lille", "Lyon", "Bordeaux", "Strasbourg"]

20.times do |i|
  Dog.create!(dog_name: Faker::Creature::Dog.dog_name, city: city.all.sample)
end

10.times do |i|
  Dogsitter.create!(first_name: Faker::Name.first_name, city: city.all.sample)
end

30.times do |i|
  Stroll.create!
  	(date: Faker::Date,
    city: city.all.sample.id
    dog_id: city.dogs.sample.id,
    dogsitter_id: city.dogsitters.sample.id)
end

puts "Chiens, dogsitters et promenades créés"