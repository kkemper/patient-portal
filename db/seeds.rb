# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# patients.destroy_all

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

User.create!(name: "Kit Kemper", email: "cgkemper@gmail.com", password: "sNbKbUvBN82EoMwF", password_confirmation: "sNbKbUvBN82EoMwF", admin: true, activated: true, activated_at: Time.zone.now)

100.times do |n|
	name = Faker::Name.name
	email = "example-#{n+1}@example.com"
	password = "password"
	User.create!(name: name, email: email, password: password, password_confirmation: password, activated:true, activated_at: Time.zone.now)
end


