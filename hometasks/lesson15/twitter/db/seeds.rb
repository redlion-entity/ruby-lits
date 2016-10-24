# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all

100.times do
  nick_name = Faker::Internet.user_name

  User.create(nickname: nick_name, email: Faker::Internet.email(name = nick_name), avatar: 'https://robohash.org/' + nick_name)
end