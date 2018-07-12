# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ first_name: "Gonzalo" }, { last_name: "Diaz" }, { email: "gonzalodiaz000@gmail.com" }, { password: 'gonzalo1234'} , { password_confirmation: 'gonzalo1234' }])

admin=User.new({ email: 'gonzalodiaz000@gmail.com',
           password: 'gonzalo1234', password_confirmation: 'gonzalo1234'})

admin.toggle!(:admin)

if admin.valid?
  admin.save()

elsif admin.errors.any?
  admin.errors.full_messages.each do |msg|
    puts msg
  end
else
  puts "****NOT VALID****"
end