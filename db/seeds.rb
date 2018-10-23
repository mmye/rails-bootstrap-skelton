Category.create!(name: 'food')
Category.create!(name: 'drink')
Product.create!(name: 'hamburger', price: 300, category_id: 1,
                released_on: Time.now.ago(rand(1..10).day))
Product.create!(name: 'french fry', price: 220, category_id: 1,
                released_on: Time.now.ago(rand(1..10).day))
Product.create!(name: 'orange juice', price: 180,
                category_id: 2, released_on: Time.now.ago(rand(1..10).day))
