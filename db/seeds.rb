# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kat_ness = Cat.create(name: "Garfield Arbuckle", password: "luvlasagna", username: "kat_ness", email: "garfield0@garfield.com", nickname: "0 Garfield", bio: " 0 I love lasagna and sleeping. I am fat and comical. Comedy.")
garfield = Cat.create(name: "Not Garfield", password: "luvlasagna", username: "garfield1",  email: "garfield1@garfield.com", nickname: "1 Garfield", bio: " 1 I love lasagna and sleeping. I am fat and comical. Comedy.")
not_garfield = Cat.create(name: "Also Definitely Not Garfield", password: "luvlasagna", username: "garfield2" , email: "garfield2@garfield.com", nickname: "2 Garfield", bio: " 2 I love lasagna and sleeping. I am fat and comical. Comedy.")
not_garfield2 = Cat.create(name: "Also Definitely Not Garfield", password: "luvlasagna", username: "garfield2" , email: "garfield2@garfield.com", nickname: "2 Garfield", bio: " 2 I love lasagna and sleeping. I am fat and comical. Comedy.")
not_garfield3 = Cat.create(name: "Also Definitely Not Garfield", password: "luvlasagna", username: "garfield2" , email: "garfield2@garfield.com", nickname: "2 Garfield", bio: " 2 I love lasagna and sleeping. I am fat and comical. Comedy.")


Follow.create(followed_id: not_garfield.id , follower_id: garfield.id)
Follow.create(followed_id: not_garfield2.id, follower_id: garfield.id)
Follow.create(followed_id: not_garfield3.id, follower_id: garfield.id)
Follow.create(followed_id: not_garfield3.id, follower_id: kat_ness)
Follow.create(followed_id: garfield, follower_id: not_garfield2.id)
Follow.create(followed_id: kat_ness, follower_id: garfield)
Follow.create(followed_id: not_garfield2, follower_id: not_garfield)

Meow.create(body: "I am a cat, Meow, Meow.", cat_id: garfield.id, username: garfield.username)
Meow.create(body: "I am a cat, Meow, Bark.", cat_id: garfield.id, username: garfield.username)
Meow.create(body: "I am a cat, Bark, Meow.", cat_id: garfield.id, username: garfield.username)
Meow.create(body: "I am a cat, Bark, Bark.", cat_id: not_garfield.id, username: not_garfield.username)
Meow.create(body: "I am a cat, Mew, Mew.", cat_id: kat_ness.id, username: kat_ness.username)
Meow.create(body: "I am a cat, Mew, Mew.", cat_id: not_garfield2.id, username: not_garfield2.username)
Meow.create(body: "I am a cat, Mew, Mew.", cat_id: not_garfield3.id, username: not_garfield3.username)
Meow.create(body: "I am a cat, Mew, Mew.", cat_id: not_garfield.id, username: not_garfield.username)
Meow.create(body: "I am a cat, Mew, Mew.", cat_id: not_garfield3.id, username: not_garfield.username)
Meow.create(body: "World domination today, maybe? Mew, Mew.", cat_id: garfield.id, username: garfield.username)
Meow.create(body: "Need food, Mew, Mew.", cat_id: kat_ness.id, username: kat_ness.username)
Meow.create(body: "Want food", cat_id: garfield.id, username: garfield.username)

