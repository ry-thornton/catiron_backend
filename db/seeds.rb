# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.create(name: "Garfield Arbuckle", password: "luvlasagna", username: "garfield0", email: "garfield0@garfield.com", nickname: "0 Garfield", bio: " 0 I love lasagna and sleeping. I am fat and comical. Comedy.")
Cat.create(name: "Not Garfield", password: "luvlasagna", username: "garfield1",  email: "garfield1@garfield.com", nickname: "1 Garfield", bio: " 1 I love lasagna and sleeping. I am fat and comical. Comedy.")
Cat.create(name: "Also Definitely Not Garfield", password: "luvlasagna", username: "garfield2" , email: "garfield2@garfield.com", nickname: "2 Garfield", bio: " 2 I love lasagna and sleeping. I am fat and comical. Comedy.")
Follow.create(followed_id: 1, follower_id: 2)
Follow.create(followed_id: 1, follower_id: 3)
Follow.create(followed_id: 2, follower_id: 3)
Follow.create(followed_id: 3, follower_id: 1)
Meow.create(body: "I am a cat, Meow, Meow.", cat_id: 1)
Meow.create(body: "I am a cat, Meow, Bark.", cat_id: 2)
Meow.create(body: "I am a cat, Bark, Meow.", cat_id: 1)
Meow.create(body: "I am a cat, Bark, Bark.", cat_id: 3)
Meow.create(body: "I am a cat, Mew, Mew.", cat_id: 3)
