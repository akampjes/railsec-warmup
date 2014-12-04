# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email

require 'faker'
require 'securerandom'

1.upto(SecureRandom.random_number(200) + 100) do |i|
  User.create(
    email: Faker::Internet.safe_email,
    password: (password = SecureRandom.base64),
    password_confirmation: password,
    name: Faker::Name.first_name,
    sekret: Faker::Lorem.paragraphs(4).join("\n")
  )
  print 'u'
end

User.create(
    email: 'ed.snowden@nsa.govt',
    password: (password = SecureRandom.base64),
    password_confirmation: password,
    name: 'Edward Snowden',
    sekret: 'They can hear your throughts'
  )
print 's'

1.upto(SecureRandom.random_number(100) + 50) do |i|
  User.create(
    email: Faker::Internet.safe_email,
    password: (password = SecureRandom.base64),
    password_confirmation: password,
    name: Faker::Name.first_name,
    sekret: Faker::Lorem.paragraphs(4).join("\n")
  )
  print 'u'
end

