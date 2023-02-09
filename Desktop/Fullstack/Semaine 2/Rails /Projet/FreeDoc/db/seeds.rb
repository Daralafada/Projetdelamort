require 'faker'

city = ["Paris", "Marseille", "Lille", "Lyon", "Bordeaux", "Strasbourg"]
specialities = ["cardiology", "emergency", "surgery", "dermatology", "neurology", "psychiatry", "radiology", "pediatric", "gynecology", "pneumology"]


20.times do |i|
  Doctor.create!
  	(first_name: Faker::Name.first_name
    last_name: Faker::Name.last_name
    zip_code: Faker::Address.zip_code
    speciality: specialities.sample
    city: city.all.sample)
end

40.times do |i|
  Patient.create!
  (first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
    city: city.all.sample)
end


40.times do |i|
  Appointment.create!
  	(date: Faker::Date
    doctor_id: Doctor.all.sample.id
    patient_id: Patient.all.sample.id
    city_id: city.all.sample.id)
end

puts "Docteurs, patients et rdv créés"