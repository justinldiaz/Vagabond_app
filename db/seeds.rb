# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1= User.create({first_name: "Bob", last_name: "Sagit", email: "bob@aol.com", password_digest: "dsfdsfsdfsdf"})

p1 = Post.create({title: "that one day in melbourne", content: "we had a long long way to walk", user_id: 1})
p2 = Post.create({title: "that other day in osaka", content: "the miso tasted better than it does in canada", user_id: 1})

