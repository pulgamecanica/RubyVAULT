user1 = User.create(name: "Jorge", email: "jorje13@gmail.com", password: "bigfish")
user2 = User.create(name: "Manuel", email: "manu_many@yahoo.com.mx", password: "my_manu_mini")
user3 = User.create(name: "Antonio", email: "antony.k.12@hotmail.us", password: "a1s2d3f4g5")
user4 = User.create(name: "Karla", email: "karlita@vector.com.uk", password: "qwert12345")
#**************************************************************#
Url.create(user_id: user1.id, original: "https://www.w3schools.com/tags/ref_urlencode.asp", visits: 0)
Url.create(user_id: user2.id, original: "https://www.amazon.com/", visits: 0)
Url.create(user_id: user3.id, original: "https://es.wikipedia.org/wiki/Wikipedia:Portada", visits: 0)
Url.create(user_id: user4.id, original: "http://www.elperiodico.com/es/noticias/deportes/wimbledon-6142798", visits: 0)
Url.create(user_id: user2.id, original: "https://github.com/pulgamecanica", visits: 0)



