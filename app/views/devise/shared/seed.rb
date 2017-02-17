Cook.destroy_all

a = Cook.new(speciality: "French", address: "58 domaine saint-hugues, Paris", home_style: "House",
  age: 22, capacity: 5, nickname: "Alexi", motto: "Les rires éclatent mieux lorsque la nourriture est bonne.", price: 20,
  )

a.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094993/tajine-el-bey-800x600_suitnr.jpg"]
a.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487321745/EM2_bzagz2.jpg"
a.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/r_0/v1487320938/k1_bbx6e6.jpg"]

a.save!

b = Cook.new(speciality: "Italian", address: "33 rue des Francsbourgeois, Paris", home_style: "Appartment",
  age: 42, capacity: 10, nickname: "Mama Rosa", motto: "La gastronomie est l'art d'utiliser la nourriture pour créer le bonheur.", price: 90,
  )

b.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094993/tajine-el-bey-800x600_suitnr.jpg"]
b.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487321745/EW3_endw4n.jpg"
b.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487169328/images-8_eycowv.jpg"]
b.save!

c = Cook.new(speciality: "Moroccan", address: "4 rue des maroccains, Paris", home_style: "Appartment",
  age: 42, capacity: 2, nickname: "Z", motto: "On ne peut pas faire de cuisine si l'on aime pas les gens.", price: 30,
  )
c.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094993/taboule_xxljev.png"]
c.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487321745/EM1_syzuns.jpg"
c.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487169328/imgres-3_g85tjg.jpg"]
c.save!


d = Cook.new(speciality: "Chinese", address: " 4 rue des petits champs, Paris", home_style: "Appartment",
  age: 50, capacity: 4, nickname: "Carman", motto: "La cuisine, c'est comme l'amour, il faut goûter à tout pour reconnaître ce qui est bon.", price: 32,
  )

d.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094991/Harira_semoule_orge_au88k3.jpg"]
d.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487165780/Image_uploaded_from_iOS_1_dzakio.jpg"
d.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487169328/images-9_iuevae.jpg"]
d.save!

e = Cook.new(speciality: "Indian", address: "6 rue des Petites-Écuries, Paris", home_style: "Appartment",
  age: 32, capacity: 6, nickname: "Didi", motto: "La cuisine c'est un art qui, pour ne pas s'abâtardir, a besoin de fantaisie, d'un petit grain de folie", price: 35,
  )

e.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487157348/dohhzqatvs6ofocktz4b.jpg"]
e.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
e.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487169328/images-6_ayswuz.jpg"]
e.save!


f = Cook.new(speciality: "Italian", address: "67 rue de l'ardoise, Paris", home_style: "Appartment",
  age: 45, capacity: 2, nickname: "Gio", motto: "Bonne cuisine et bon vin, c'est le paradis sur terre.", price: 70,
  )

f.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487165197/Italian_3_a2tqvs.jpg"]
f.cooker_photo_url = "https://cloudinary.com/console/media_library#/dialog/image/upload/k3_ci77rn"
f.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487169328/images-17_rp17np.jpg"]
f.save!

g = Cook.new(speciality: "Indian", address: "120 avenue de Saint Exupery, Paris", home_style: "Appartment",
  age: 60, capacity: 4, nickname: "Karthik", motto: "Une nourriture généreuse fait du bien au coeur", price: 30,
  )
g.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487164766/Indian_3_fvqb2o.jpg"]
g.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
g.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487169328/images-4_rjbeaz.jpg"]
g.save!

h = Cook.new(speciality: "French", address: "60 rue des Francsbourgeois, Paris", home_style: "Duplex",
  age: 56, capacity: 12, nickname: "Albert", motto: "La cuisine est un moyen de faire plaisir à une personne.r", price: 40,
  )
h.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094992/saumon-en-croute-_piresi.jpg"]
h.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
h.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487169328/images-5_af3fti.jpg"]
h.save!

i = Cook.new(speciality: "Moroccan", address: "33 rue des petits fours, Paris", home_style: "Appartment",
  age: 28, capacity: 10, nickname: "Taieb", motto: "L'amour ça se cuisine tous les jours.", price: 50,
  )
i.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487094991/kebbeh-epinards-noix-detc-800x600_hfuozr.png"]
i.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487321745/EW3_endw4n.jpg"
i.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487169327/images-13_fmhzmh.jpg"]
i.save!

j = Cook.new(speciality: "Chinese", address: "81 rue Oberkampf, Paris", home_style: "Appartment",
  age: 32, capacity: 4, nickname: "Eddie", motto: "La bonne cuisine est honnête, sincère et simple.", price: 45,
  )
j.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487158979/images_mxxsss.jpg"]
j.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487165780/Image_uploaded_from_iOS_1_dzakio.jpg"
j.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487169327/images-16_j8gpu2.jpg"]
j.save!

k = Cook.new(speciality: "Italian", address: "111 rue du Faubourg Poissoniere, Paris", home_style: "Appartment",
  age: 33, capacity: 2, nickname: "Giulia", motto: "Tout est plus facile à dire dans une cuisine, tout y est nuancé par cette intention du partage, un appétit fait de la sève même des choses.", price: 65,
  )

k.recipe_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487164196/grid-cell-8256-1384892528-7_qq89yj.jpg"]
k.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487321745/EW4_mi0crv.jpg"
k.location_photo_urls = ["https://cloudinary.com/console/media_library#/dialog/image/upload/k4_qroktm"]
k.save!

l = Cook.new(speciality: "Indian", address: "213 rue des grelons, Paris", home_style: "Appartment",
  age: 25, capacity: 10, nickname: "Vadish", motto: "D'où que viennent mes hôtes, c'est ma cuisine qu'ils semblent préférer.", price: 56,
  )
l.recipe_photo_urls = ["https://cloudinary.com/console/media_library#/dialog/image/upload/imgres-1_vzfhgd"]
l.cooker_photo_url = "http://res.cloudinary.com/mamarmite/image/upload/v1487165784/Image_uploaded_from_iOS_ultabo.jpg"
l.location_photo_urls = ["http://res.cloudinary.com/mamarmite/image/upload/v1487169327/images-10_xn1nxf.jpg"]
l.save!
