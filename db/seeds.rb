# USERS CREATION

# User.destroy_all
puts 'Waiting for users creation'

olivier = User.create email: "olivier@gmail.com", password: "123456", first_name: "Olivier", last_name: "Belzeaux", id: 1
randja = User.create email: "randja@gmail.com", password: "123456", first_name: "Randja", last_name: "Yazid", id: 2

puts 'Users created'

# ANNOUNCEMENT CREATION

# Announcement.destroy_all
puts 'Waiting for announcements creation'

announcement_one = Announcement.new(
  title: "Citroën C4 Picasso e-HDi 115 Confort",
  description: "Citroën C4 Picasso e-HDi 115 Confort monospace, blanc, 6 cv, 5 portes, première mise en circulation le 18/12/2014, garantie 3 mois.",
  price: 5990,
  category: "automobile",
  url_photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Citro%C3%ABn_C4_Picasso_HDi_150_FAP_Tendance_%E2%80%93_Frontansicht%2C_9._April_2011%2C_D%C3%BCsseldorf.jpg/1200px-Citro%C3%ABn_C4_Picasso_HDi_150_FAP_Tendance_%E2%80%93_Frontansicht%2C_9._April_2011%2C_D%C3%BCsseldorf.jpg",
  user_id: 1
)
announcement_one.save!

announcement_two = Announcement.new(
  title: "Peugeot 2008 1.6 HDi 120ch Grip Control",
  description: "Peugeot 2008 1.6 HDi 120ch Grip Control {94.000KM} tout-terrain, blanc, 6 cv, 5 portes, première mise en circulation le 30/12/2016, garantie 3 mois.",
  price: 11_490,
  category: "automobile",
  url_photo: "https://upload.wikimedia.org/wikipedia/commons/f/f7/2020_Peugeot_2008_Allure_Front.jpg",
  user_id: 1
)
announcement_two.save!

announcement_three = Announcement.new(
  title: "Ford Fiesta 2013",
  description: " Ford fiesta essence 2013, 5 place,3 portes. Moteur remis à neuf, pare brise avant changer, pneus 4 saisons, tapis spéciale ford fiesta inclus.",
  price: 7500,
  category: "automobile",
  url_photo: "https://upload.wikimedia.org/wikipedia/commons/e/eb/Ford_Fiesta_Mk7_20090223_front.jpg",
  user_id: 1
)
announcement_three.save!

announcement_four = Announcement.new(
  title: "Karcher pour vitres",
  description: "En excellent état. Utilisé 3 ou 4 fois.",
  price: 20,
  category: "éléctromenager",
  url_photo: "https://s1.kaercher-media.com/products/16332120/main/1/d0.jpg",
  user_id: 1
)
announcement_four.save!

announcement_five = Announcement.new(
  title: "Robot mixeur blender",
  description: "Robot mixeur blender excellent état, très peu utilisé cause double emploi, livré avec notice d'utilisation.",
  price: 22,
  category: "éléctromenager",
  url_photo: "https://m.media-amazon.com/images/I/61U+zXbvliL._AC_SX425_.jpg",
  user_id: 1
)
announcement_five.save!

announcement_six = Announcement.new(
  title: "Machine grill à Paninis/Tacos/Sandwichs",
  description: "MACHINE À PANINI/TACOS NEUVE BOITE ET NOTICE D'UTILISATION.",
  price: 35,
  category: "éléctromenager",
  url_photo: "https://www.comparatif-multicuiseur.com/wp-content/uploads/2019/08/appareil-panini-qualite-267x300.jpg",
  user_id: 1
)
announcement_six.save!

puts 'Announcements created'
