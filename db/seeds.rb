# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

j = User.create(first_name: "Jared",last_name:"Smith",email:"neuralsplash@gmail.com",password_digest:"$2a$10$GODvPorO5F/TxMkcD33ws.pVwPwWulwb8ng0GmMMVFjpMuJCxdEGO")

l = User.create(first_name: "Linda",last_name:"Lastname",email:"linda@dot.com",password_digest:"$2a$10$GODvPorO5F/TxMkcD33ws.pVwPwWulwb8ng0GmMMVFjpMuJCxdEGO")

d = User.create(first_name: "David",last_name:"Lastname",email:"ddeuber@gmail.com",password_digest:"$2a$10$GODvPorO5F/TxMkcD33ws.pVwPwWulwb8ng0GmMMVFjpMuJCxdEGO")

jeremy = User.create(first_name: "Jeremy",last_name:"Lastname",email:"jeremybrenner0@gmail.com",password_digest:"$2a$10$GODvPorO5F/TxMkcD33ws.pVwPwWulwb8ng0GmMMVFjpMuJCxdEGO")