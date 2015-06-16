# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

reno = City.create(name: "Reno", picture: "http://i361.photobucket.com/albums/oo59/ipavel4u/lake%20tahoe%20and%20reno/DSC00778-1.jpg" )

lv = City.create(name: "Las Vegas", picture: "http://i0006.photobucket.com/albums/0006/findstuff22/Best%20Images/Travel/BESTLas_Vegas_Strip-1-1.jpg" )

trk = City.create(name: "Truckee", picture: "http://i207.photobucket.com/albums/bb50/lastrider5/Home%20Town%20Truckee/downtownTruckee.jpg" )

sac = City.create(name: "Sacramento", picture: "http://i327.photobucket.com/albums/k468/hollywoodsalbum/CarpetCleaningSacramentoCA6.jpg" )

port = City.create(name: "Portand", picture: "http://i116.photobucket.com/albums/o4/Dimmew/Oregon/877440477_67ef846305_o.jpg" )

aus = City.create(name: "Austin", picture: "http://i1279.photobucket.com/albums/y523/douglasallenwhiteaustin/douglasallenwhiteaustintexas_zps312be758.jpg" )

ho = City.create(name: "Houston", picture: "http://i1254.photobucket.com/albums/hh616/aotucker/San%20Diego/_DSC2511z.jpg" )

la = City.create(name: "los Angeles", picture: "http://i1193.photobucket.com/albums/aa346/hasenchat/Downdown%20Los%20Angeles/DSC00680.jpg" )

mia = City.create(name: "Miami", picture: "http://i710.photobucket.com/albums/ww101/IzzyMattapan7/untitled-4.jpg" )

chi = City.create(name: "Chicago", picture: "http://i359.photobucket.com/albums/oo37/02fornever15/andstillChicago.jpg" )

bos = City.create(name: "Boston", picture: "http://i1211.photobucket.com/albums/cc426/Sandybe223/Boston/2131.jpg" )

ny = City.create(name: "New York", picture: "http://i65.photobucket.com/albums/h235/Ignwar/Album%20Panoramic/OurCivilization03.jpg" )

sf = City.create(name: "San Francisco", picture: "http://i65.photobucket.com/albums/h235/Ignwar/Album%20Cities/MoonoverSanFrancisco.jpg" )

sea = City.create(name: "Seattle", picture: "http://i249.photobucket.com/albums/gg215/wlewis7402/Seattle.jpg")

j = User.create(first_name: "Jared",last_name:"Smith",email:"neuralsplash@gmail.com",password_digest:"$2a$10$GODvPorO5F/TxMkcD33ws.pVwPwWulwb8ng0GmMMVFjpMuJCxdEGO")

l = User.create(first_name: "Linda",last_name:"Lastname",email:"linda@dot.com",password_digest:"$2a$10$GODvPorO5F/TxMkcD33ws.pVwPwWulwb8ng0GmMMVFjpMuJCxdEGO")

d = User.create(first_name: "David",last_name:"Lastname",email:"ddeuber@gmail.com",password_digest:"$2a$10$GODvPorO5F/TxMkcD33ws.pVwPwWulwb8ng0GmMMVFjpMuJCxdEGO")

jeremy = User.create(first_name: "Jeremy",last_name:"Lastname",email:"jeremybrenner0@gmail.com",password_digest:"$2a$10$GODvPorO5F/TxMkcD33ws.pVwPwWulwb8ng0GmMMVFjpMuJCxdEGO")

j.posts.create(title: "Jared's post", content: "This place is awesome", city: sf)

l.posts.create(title: "Linda's post", content: "This place is awesome", city: sf)

d.posts.create(title: "David's post", content: "This place is awesome", city: sf)

jeremy.posts.create(title: "Jeremy's post", content: "This place is awesome", city: sf)

