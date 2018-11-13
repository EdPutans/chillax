# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Destination.create(title: "Destination 1", content: "lorem ipsum dolor sit amet", price: 1200)
Destination.create(title: "Destination 2", content: "lorem ipsum dolor sit amet", price: 1300)
Destination.create(title: "Destination 3", content: "lorem ipsum dolor sit amet", price: 1400)
Destination.create(title: "Destination 4", content: "lorem ipsum dolor sit amet", price: 1500)
Destination.create(title: "Destination 5", content: "lorem ipsum dolor sit amet", price: 1600)


Picture.create(destination_id: 1, picture_url: "https://cdn.pixabay.com/photo/2017/06/19/16/19/portugal-2419987_960_720.jpg", title: "crispy Pic")
Picture.create(destination_id: 1, picture_url: "https://images.unsplash.com/photo-1530622044064-d99fa23c9bf3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=da1e24664ce66c563ce50a421174d8d5&auto=format&fit=crop&w=1050&q=80", title: "crispy Pic")
Picture.create(destination_id: 1, picture_url: "https://cdn.pixabay.com/photo/2017/01/19/07/11/fish-1991678_960_720.jpg", title: "crispy Pic")
Picture.create(destination_id: 1, picture_url: "https://cdn.pixabay.com/photo/2017/06/02/18/20/dubai-2367021_960_720.jpg", title: "crispy Pic")
Picture.create(destination_id: 3, picture_url: "https://cdn.pixabay.com/photo/2014/12/23/11/03/malta-valley-578207_960_720.jpg", title: "crispy Pic")
Picture.create(destination_id: 2, picture_url: "https://cdn.pixabay.com/photo/2015/02/12/18/32/hurghada-634054_960_720.jpg", title: "crispy Pic")
Picture.create(destination_id: 4, picture_url: "https://cdn.pixabay.com/photo/2017/01/26/01/13/malta-2009526_960_720.jpg", title: "crispy Pic")
Picture.create(destination_id: 5, picture_url: "https://cdn.pixabay.com/photo/2014/09/07/14/52/ibiza-437876_960_720.jpg", title: "crispy Pic")


Month.create(destination_id: 2, name: "September, October")
Month.create(destination_id: 3, name: "September, October, November")
Month.create(destination_id: 4, name: "September, October, November, December")
Month.create(destination_id: 5, name: "September, October, November, December, May")
Month.create(destination_id: 1, name: "September, October, November, December, May, July")

User.create(name: "bob", email: "bob")