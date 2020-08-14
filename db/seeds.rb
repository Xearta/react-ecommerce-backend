# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(first_name: 'Tanner', last_name: 'Townsend', email: 'admin@widgets.com', password: 'qwerty', password_confirmation: 'qwerty', isAdmin: true)
user2 = User.create(first_name: 'Bob', last_name: 'Barker', email: 'bob@widgets.com', password: 'qwerty', password_confirmation: 'qwerty', isAdmin: false)

# Products
prod1 = Product.create(name: 'Stanley Hammer', category: 'Stanley', image: '/images/t1.jpg', 
description: 'Great hammer for smashing all of the things!', price: 12.99, brand: 'Stanley', countInStock: 10)
prod2 = Product.create(name: 'Some Old Rusty Nails', category: 'Unknown', image: '/images/t2.jpg', 
description: 'These are the best old rusty nails anyone can find!', price: 3.99, brand: 'Unknown', countInStock: 1)
prod3 = Product.create(name: 'Craftsman Wrench', category: 'Craftsman', image: '/images/t3.jpg', 
description: 'How does one even use this thing?', price: 1.99, brand: 'Craftsman', countInStock: 6)
prod4 = Product.create(name: 'DeWalt 20V Power Drill', category: 'DeWalt', image: '/images/t4.jpg', 
description: 'The best drill anyone will ever use! Comes with battery included.', 
price: 99.99, brand: 'DeWalt', countInStock: 12)
prod5 = Product.create(name: 'Craftsman Drill Bit Set', category: 'Craftsman', image: '/images/t5.jpg', 
description: 'Not even sure how to use these. Must buy drill first!', price: 29.99, brand: 'Craftsman', countInStock: 4)
prod6 = Product.create(name: 'Stanley Socket Set', category: 'Stanley', image: '/images/t6.jpg', 
description: 'You really won\'t ever use these!', price: 59.99, brand: 'Stanley', countInStock: 0)

# Reviews
rev1 = prod1.reviews.create(product_id: prod1.id, name: 'Tanner Townsend', rating: 5, comment: 'Amazing Hammer!')
rev2 = prod1.reviews.create(product_id: prod1.id, name: 'Bob Barker', rating: 2, comment: 'Couldn\'t figure out how to use it!!!!!!!!!!')
rev3 = prod2.reviews.create(product_id: prod2.id, name: 'Tanner Townsend', rating: 3, comment: 'Nails broke when using them! Good thing they were cheap...')
rev4 = prod3.reviews.create(product_id: prod3.id, name: 'Bob Barker', rating: 1.5, comment: 'Lame wrench! Doesn\'t even do the job for you.')
rev5 = prod4.reviews.create(product_id: prod4.id, name: 'Bob Barker', rating: 4.7, comment: 'Woo hoo! Power tools are awesome!')
rev6 = prod5.reviews.create(product_id: prod5.id, name: 'Bob Barker', rating: 5, comment: 'I needed this really badly with my new drill!')