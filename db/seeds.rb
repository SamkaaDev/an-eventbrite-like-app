# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
# Event.destroy_all
# Attendance.destroy_all

1.times do
# 	firstname = Faker::Name.first_name
# 	lastname = Faker::Name.last_name
# 	User.create!(first_name: firstname, last_name: lastname, description: Faker::Quote.famous_last_words, encrypted_password: Faker::Internet.password(min_length: 8), email: "#{lastname}.#{firstname}@yopmail.com")

	Event.create!(start_date: Faker::Time.between(from: DateTime.now - 200, to: DateTime.now + 200, format: :short), duration: Faker::Number.between(from: 60, to: 1440), title: Faker::Verb.ing_form, description: Faker::Quote.famous_last_words, price: Faker::Number.between(from: 0, to: 10), location: Faker::Address.street_address, administrator: User.all.sample)

end

# 1.times do 

# 	Attendance.create!(stripe_customer_id: "STR#{Faker::Number.number(digits: 10)}", event: Event.all.sample, participant: User.all.sample)

# end