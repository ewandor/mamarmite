# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'nokogiri'
# require 'json'
require 'open-uri'

# url_starters = "http://www.delice-et-cuisine.com/recettes-cuisine/entrees/"

# entrees = {}

# html_file = open(url_starters)
# html_doc = Nokogiri::HTML(html_file)
# html_doc.search('.content a').each do |link|
#     url = link.attributes["href"]
#     puts url
#     html_file = open(url)
#     html_doc = Nokogiri::HTML(html_file)
#     recipe = html_doc.search('h1').text.strip.gsub(' ','-')
#     img_url = html_doc.search('.image').children.first.attr('src')
#     img_extension = img_url.split('.').last
#     path = Rails.root.join('app', 'assets', 'images')
#     system("wget #{img_url} -P #{path}")
# end



Cook.destroy_all
User.destroy_all

puts "Creation of Lyor, Ben, Ines & Elodie profiles (takes times because of uploading images"
lyor = User.create!(
 {
   email: "Lyor@mamarmite.com",
   password: "123456",
   first_name: "Lyor"
 }
)

ben = User.create!(
 {
   email: "Ben@mamarmite.com",
   password: "123456",
   first_name: "Ben"
 }
)

ines = User.create!(
 {
   email: "Ines@mamarmite.com",
   password: "123456",
   first_name: "Ines"
 }
)

elodie = User.create!(
 {
   email: "Elodie@mamarmite.com",
   password: "123456",
   first_name: "Elodie"
 }
)

a = Cook.new(speciality: "French", address: "58 domaine saint-hugues, Paris", home_style: "House",
  age: 22, capacity: 5, nickname: "Alexi", motto: "Les rires éclatent mieux lorsque la nourriture est bonne.", price: 20,
  )

a.user = lyor
a.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094993/tajine-el-bey-800x600_suitnr.jpg"]
a.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487337189/French_woman_paqsob.jpg"
a.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/r_0/v1487320938/k1_bbx6e6.jpg"]

a.save!

b = Cook.new(speciality: "Italian", address: "33 rue des Francsbourgeois, Paris", home_style: "Appartment",
  age: 42, capacity: 10, nickname: "Mama Rosa", motto: "La gastronomie est l'art d'utiliser la nourriture pour créer le bonheur.", price: 90,
  )

b.user = ben
b.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094993/tajine-el-bey-800x600_suitnr.jpg"]
b.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487336426/Italian_woman_nhr9pv.jpg"
b.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487320936/k2_xnx0xi.jpg"]
b.save!


c = Cook.new(speciality: "Moroccan", address: "4 rue des maroccains, Paris", home_style: "Appartment",
  age: 42, capacity: 2, nickname: "Z", motto: "On ne peut pas faire de cuisine si l'on aime pas les gens.", price: 30,
  )
c.user = elodie
c.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094993/taboule_xxljev.png"]
c.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487337310/Moroccan_woman_smhabl.png"
c.location_photo_urls = ["https://cloudinary.com/console/media_library#/dialog/image/upload/k3_ci77rn "]
c.save!


d = Cook.new(speciality: "Chinese", address: " 4 rue des petits champs, Paris", home_style: "Appartment",
  age: 50, capacity: 4, nickname: "Carman", motto: "La cuisine, c'est comme l'amour, il faut goûter à tout pour reconnaître ce qui est bon.", price: 32,
  )

d.user = ines
d.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094991/Harira_semoule_orge_au88k3.jpg"]
d.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487165780/Image_uploaded_from_iOS_1_dzakio.jpg"
d.location_photo_urls = ["https://cloudinary.com/console/media_library#/dialog/image/upload/k4_qroktm"]
d.save!

e = Cook.new(speciality: "Indian", address: "6 rue des Petites-Écuries, Paris", home_style: "Appartment",
  age: 32, capacity: 6, nickname: "Didi", motto: "La cuisine c'est un art qui, pour ne pas s'abâtardir, a besoin de fantaisie, d'un petit grain de folie", price: 35,
  )

e.user = lyor
e.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487157348/dohhzqatvs6ofocktz4b.jpg"]
e.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
e.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487320936/k2_xnx0xi.jpg"]
e.save!


f = Cook.new(speciality: "Italian", address: "67 rue de l'ardoise, Paris", home_style: "Appartment",
  age: 45, capacity: 2, nickname: "Giulia", motto: "Bonne cuisine et bon vin, c'est le paradis sur terre.", price: 70,
  )


f.user = ben
f.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487164196/grid-cell-8256-1384892528-7_qq89yj.jpg"]
f.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487336425/Italian_woman_2_x4mk8b.jpg"
f.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/r_0/v1487320938/k1_bbx6e6.jpg"]
f.save!

g = Cook.new(speciality: "Indian", address: "120 avenue de Saint Exupery, Paris", home_style: "Appartment",
  age: 60, capacity: 4, nickname: "Karthik", motto: "Une nourriture généreuse fait du bien au coeur", price: 30,
  )
g.user = elodie
g.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487164766/Indian_3_fvqb2o.jpg"]
g.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
g.location_photo_urls = ["https://cloudinary.com/console/media_library#/dialog/image/upload/k4_qroktm"]
g.save!

h = Cook.new(speciality: "Italian", address: "60 rue des Francsbourgeois, Paris", home_style: "Duplex",
  age: 56, capacity: 12, nickname: "Julietta", motto: "La cuisine est un moyen de faire plaisir à une personne.r", price: 40,
  )
h.user = ines
h.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094992/saumon-en-croute-_piresi.jpg"]
h.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487337530/Italian_woman_4_efsjgr.jpg"
h.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/r_0/v1487320938/k1_bbx6e6.jpg"]
h.save!

i = Cook.new(speciality: "Moroccan", address: "33 rue des petits fours, Paris", home_style: "Appartment",
  age: 28, capacity: 10, nickname: "Rachida", motto: "L'amour ça se cuisine tous les jours.", price: 50,
  )
i.user = lyor
i.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094991/kebbeh-epinards-noix-detc-800x600_hfuozr.png"]
i.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487337310/Moroccan_woman_smhabl.png"
i.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487320936/k2_xnx0xi.jpg"]
i.save!

j = Cook.new(speciality: "Chinese", address: "81 rue Oberkampf, Paris", home_style: "Appartment",
  age: 32, capacity: 4, nickname: "Eddie", motto: "La bonne cuisine est honnête, sincère et simple.", price: 45,
  )
j.user = ben
j.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487158979/images_mxxsss.jpg"]
j.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487336352/Chinese_woman_yasp04.jpg"
j.location_photo_urls = ["https://cloudinary.com/console/media_library#/dialog/image/upload/k3_ci77rn "]
j.save!

k = Cook.new(speciality: "Italian", address: "111 rue du Faubourg Poissoniere, Paris", home_style: "Appartment",
  age: 33, capacity: 2, nickname: "Gio", motto: "Tout est plus facile à dire dans une cuisine, tout y est nuancé par cette intention du partage, un appétit fait de la sève même des choses.", price: 65,
  )

k.user = elodie
k.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487164196/grid-cell-8256-1384892528-7_qq89yj.jpg"]
k.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487337189/French_woman_paqsob.jpg"
k.location_photo_urls = ["https://cloudinary.com/console/media_library#/dialog/image/upload/k4_qroktm"]
k.save!

l = Cook.new(speciality: "Indian", address: "213 rue des grelons, Paris", home_style: "Appartment",
  age: 25, capacity: 10, nickname: "Vadish", motto: "D'où que viennent mes hôtes, c'est ma cuisine qu'ils semblent préférer.", price: 56,
  )
l.user = ines
l.recipe_photo_urls = ["https://cloudinary.com/console/media_library#/dialog/image/upload/imgres-1_vzfhgd"]
l.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487337031/Indian_Woman_ywvepn.jpg"
l.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/r_0/v1487320938/k1_bbx6e6.jpg"]
l.save!



