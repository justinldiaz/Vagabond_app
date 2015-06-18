# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

toky = City.create(name: "Tokyo", picture: "http://iliketowastemytime.com/system/files/tokyo-japan-hd-wallpaper.jpg?download=1" )

sidn = City.create(name: "Sidney", picture: "http://www.papeldeparede.etc.br/wallpapers/australia--sidney_7374_1920x1200.jpg" )

sing = City.create(name: "Singapore", picture: "http://i.telegraph.co.uk/multimedia/archive/02659/deal-singapore_2659071b.jpg" )

bang = City.create(name: "bangkok", picture: "http://bangkok.peninsula.com/en/~/media/Images/Bangkok/Leaderboard/PBK_Landing_Leaderboard.ashx?mw=1280" )

amst = City.create(name: "Amsterdam", picture: "https://www.shortstay-amsterdam.com/wp-content/uploads/2014/11/apartment-13.jpg" )

reno = City.create(name: "Reno", picture: "http://i361.photobucket.com/albums/oo59/ipavel4u/lake%20tahoe%20and%20reno/DSC00778-1.jpg" )

lond = City.create(name: "London", picture: "http://lawsonsanddaughters.com/wp-content/uploads/2014/09/London1.jpg" )

gibr = City.create(name: "Gibraltar", picture: "https://www.defencetalk.com/wp-content/uploads/2013/08/Gibraltar.jpg" )

auck = City.create(name: "Auckland", picture: "http://i.telegraph.co.uk/multimedia/archive/02311/b10-auckland_2311071k.jpg" )

pert = City.create(name: "Perth", picture: "http://i.telegraph.co.uk/multimedia/archive/02353/perth_2353704k.jpg" )

calg = City.create(name: "Calgary", picture: "http://i.telegraph.co.uk/multimedia/archive/02311/b05-calgary_2311080k.jpg" )

vanc = City.create(name: "Vancouver", picture: "http://i.telegraph.co.uk/multimedia/archive/02311/b03-vancouver_2311063k.jpg" )

vien = City.create(name: "Vienna", picture: "http://i.telegraph.co.uk/multimedia/archive/02311/b02-vienna_2311068k.jpg" )

kara = City.create(name: "Karachi", picture: "https://upload.wikimedia.org/wikipedia/commons/1/1a/Karachi_city.jpg" )

beij = City.create(name: "Beijing", picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/View_of_Beijing.jpg/1024px-View_of_Beijing.jpg " )

tian = City.create(name: "Tianjin", picture: "http://cdn.superbwallpapers.com/wallpapers/world/tianjin-8009-2560x1600.jpg" )

ista = City.create(name: "Istanbul", picture: "https://upload.wikimedia.org/wikipedia/commons/5/52/Halic.png" )

mumb = City.create(name: "Mumbai", picture: "https://upload.wikimedia.org/wikipedia/commons/6/66/Mumbai_skyline88907.jpg" )

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

ny = City.create(name: "New York", picture: "http://www.burgessyachts.com/media/adminforms/locations/n/e/new_york_1.jpg" )

sf = City.create(name: "San Francisco", picture: "http://i65.photobucket.com/albums/h235/Ignwar/Album%20Cities/MoonoverSanFrancisco.jpg" )

sea = City.create(name: "Seattle", picture: "http://i249.photobucket.com/albums/gg215/wlewis7402/Seattle.jpg")

j = User.create(first_name: "Jared",last_name:"Smith",email:"neuralsplash@gmail.com", city: sf,password: "vagabond",password_confirmation: "vagabond")

l = User.create(first_name: "Linda",last_name:"Lastname",email:"linda@dot.com",password: "vagabond",password_confirmation: "vagabond",city: sf)

d = User.create(first_name: "David",last_name:"Lastname",email:"ddeuber@gmail.com",password: "vagabond",password_confirmation: "vagabond",city: sf)

jeremy = User.create(first_name: "Jeremy",last_name:"Lastname",email:"jeremybrenner0@gmail.com",password: "vagabond",password_confirmation: "vagabond",city: sf)

j.posts.create(title: "Jared's post", content: "This place is awesome", city: amst)

l.posts.create(title: "Linda's post", content: "This place is awesome", city: port)

d.posts.create(title: "David's post", content: "This place is awesome", city: sf)

jeremy.posts.create(title: "Jeremy's post", content: "This place is awesome", city: sing)








