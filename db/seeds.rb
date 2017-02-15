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

a = Cook.new(speciality: "French", address_street: "58 domaine saint-hugues",
  address_town: "Paris", zipcode: "75006", home_style: "House",
  age: 22, capacity: 5, nickname: "Alexi", motto: "Les rires éclatent mieux lorsque la nourriture est bonne.", price: 20,
  )

a.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487094993/tajine-el-bey-800x600_suitnr.jpg"
a.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
a.save!

b = Cook.new(speciality: "Italian", address_street: "33 rue des Francsbourgeois",
  address_town: "Paris", zipcode: "75004", home_style: "Appartment",
  age: 42, capacity: 10, nickname: "Mama Rosa", motto: "La gastronomie est l'art d'utiliser la nourriture pour créer le bonheur.", price: 90,
  )

b.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487094993/tajine-el-bey-800x600_suitnr.jpg"
b.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165780/Image_uploaded_from_iOS_1_dzakio.jpg"
b.save!

c = Cook.new(speciality: "Moroccan", address_street: "4 rue des maroccains",
  address_town: "Paris", zipcode: "75001", home_style: "Appartment",
  age: 42, capacity: 2, nickname: "Z", motto: "On ne peut pas faire de cuisine si l'on aime pas les gens.", price: 30,
  )
c.photos_homes_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487094993/taboule_xxljev.png"
c.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
c.save!


d = Cook.new(speciality: "Chinese", address_street: " 4 rue des petits champs",
  address_town: "Paris", zipcode: "75002", home_style: "Appartment",
  age: 50, capacity: 4, nickname: "Carman", motto: "La cuisine, c'est comme l'amour, il faut goûter à tout pour reconnaître ce qui est bon.", price: 32,
  )

d.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487094991/Harira_semoule_orge_au88k3.jpg"
d.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165780/Image_uploaded_from_iOS_1_dzakio.jpg"
d.save!

e = Cook.new(speciality: "Indian", address_street: "6 rue des Petites-Écuries",
  address_town: "Paris", zipcode: "75003", home_style: "Appartment",
  age: 32, capacity: 6, nickname: "Didi", motto: "La cuisine c'est un art qui, pour ne pas s'abâtardir, a besoin de fantaisie, d'un petit grain de folie", price: 35,
  )

e.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487157348/dohhzqatvs6ofocktz4b.jpg"
e.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
e.save!


f = Cook.new(speciality: "Italian", address_street: "67 rue de l'ardoise",
  address_town: "Paris", zipcode: "75004", home_style: "Appartment",
  age: 45, capacity: 2, nickname: "Gio", motto: "Bonne cuisine et bon vin, c'est le paradis sur terre.", price: 70,
  )

f.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487165197/Italian_3_a2tqvs.jpg"
f.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
f.save!

g = Cook.new(speciality: "Indian", address_street: "120 avenue de Saint Exupery",
  address_town: "Paris", zipcode: "75005", home_style: "Appartment",
  age: 60, capacity: 4, nickname: "Karthik", motto: "Une nourriture généreuse fait du bien au coeur", price: 30,
  )
g.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487164766/Indian_3_fvqb2o.jpg"
g.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
g.save!

h = Cook.new(speciality: "French", address_street: "60 rue des Francsbourgeois",
  address_town: "Paris", zipcode: "75006", home_style: "Duplex",
  age: 56, capacity: 12, nickname: "Albert", motto: "La cuisine est un moyen de faire plaisir à une personne.r", price: 40,
  )
h.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487094992/saumon-en-croute-_piresi.jpg"
h.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
h.save!

i = Cook.new(speciality: "Moroccan", address_street: "33 rue des petits fours",
  address_town: "Paris", zipcode: "75007", home_style: "Appartment",
  age: 28, capacity: 10, nickname: "Taieb", motto: "L'amour ça se cuisine tous les jours.", price: 50,
  )
i.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487094991/kebbeh-epinards-noix-detc-800x600_hfuozr.png"
i.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
i.save!

j = Cook.new(speciality: "Chinese", address_street: "81 rue Oberkampf",
  address_town: "Paris", zipcode: "75010", home_style: "Appartment",
  age: 32, capacity: 4, nickname: "Eddie", motto: "La bonne cuisine est honnête, sincère et simple.", price: 45,
  )
j.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487158979/images_mxxsss.jpg"
j.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487165780/Image_uploaded_from_iOS_1_dzakio.jpg"
j.save!

k = Cook.new(speciality: "Italian", address_street: "111 rue du Faubourg Poissoniere",
  address_town: "Paris", zipcode: "75009", home_style: "Appartment",
  age: 33, capacity: 2, nickname: "Giulia", motto: "Tout est plus facile à dire dans une cuisine, tout y est nuancé par cette intention du partage, un appétit fait de la sève même des choses.", price: 65,
  )

k.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487164196/grid-cell-8256-1384892528-7_qq89yj.jpg"
k.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
k.save!

l = Cook.new(speciality: "Indian", address_street: "213 rue des grelons",
  address_town: "Paris", zipcode: "75010", home_style: "Appartment",
  age: 25, capacity: 10, nickname: "Vadish", motto: "D'où que viennent mes hôtes, c'est ma cuisine qu'ils semblent préférer.", price: 56,
  )
l.photos_home_url = "https://cloudinary.com/console/media_library#/dialog/image/upload/imgres-1_vzfhgd"
l.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
l.save!

m = Cook.new(speciality: "French", address_street: "22 rue de la paix",
  address_town: "Paris", zipcode: "75011", home_style: "Appartment",
  age: 60, capacity: 5, nickname: "Coco", motto: "La vraie cuisine est une forme d'art. Un cadeau à partager.", price: 74,
  )

m.photos_home_url = "https://cloudinary.com/console/media_library#/dialog/image/upload/Carpaccio-de-Saint-Jacques-delice-et-cuisine_ufvbnz"
m.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165780/Image_uploaded_from_iOS_1_dzakio.jpg"
m.save!

n = Cook.new(speciality: "Moroccan", address_street: "33 rue des francsbourgeois",
  address_town: "Paris", zipcode: "75012", home_style: "Appartment",
  age: 60, capacity: 7, nickname: "Hend", motto: "Cuisine & Parce
La cuisine est le plus ancien des arts parce que Adam naquit à jeun.", price: 23,
  )
n.photos_home_url = "https://cloudinary.com/console/media_library#/dialog/image/upload/Kafteji-800x600_kqw4ju"
n.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
n.save!

o = Cook.new(speciality: "Chinese", address_street: "33 rue des francsbourgeois",
  address_town: "Paris", zipcode: "75013", home_style: "Appartment",
  age: 40, capacity: 8, nickname: "Kai-Li", motto: "On doit mettre tout son coeur dans la cuisine.", price: 64,
  )

o.photos_home_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487158974/images-1_voeoag.jpg"
o.photo_cooker = "http://res.cloudinary.com/mamarmite/image/upload/v1487165780/Image_uploaded_from_iOS_1_dzakio.jpg"
o.save!


