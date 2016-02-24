# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



100.times do |n|
	fname = Faker::Name.first_name
	lname = Faker::Name.last_name
	birthdate = Faker::Date.backward
	phone = Faker::PhoneNumber.cell_phone
	email = Faker::Internet.email
	allergies = Faker::Hipster.words(4)
	currentMedication = Faker::Hipster.words(3)
	clinicalTrials = Faker::Beer.name
	Patient.create!(fName: fname, lName: lname, birthDate: birthdate, phone: phone, email: email, allergies: allergies, currentMedication: currentMedication, clinicalTrials: clinicalTrials)
end