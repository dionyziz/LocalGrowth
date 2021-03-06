# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admins = Admin.create([{email: 'admin@admin.com',password: 'admin_password',password_confirmation: 'admin_password'}])


entertainment_categories = Stores::EntertainmentCategory.create([{ title: 'Club'},{ title: 'Bar'},{title: 'Sport'}])
entertainment_stores = Stores::EntertainmentStore.create ([
  {entertainment_category_id: 1, title: 'Trinity', description: "The ultimate clubbing experience", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {entertainment_category_id: 1, title: 'W', description: "Enjoy the aftersound", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {entertainment_category_id: 2, title: 'Roots', description: "Chill and Enjoy", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {entertainment_category_id: 2, title: 'Celebrity', description: "All the cool kids come here", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {entertainment_category_id: 2, title: 'Local pub', description: "Beer beer beer!!", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {entertainment_category_id: 3, title: 'Local Sportsclub', description: "Every sport you'll need", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'}])

food_categories = Stores::FoodCategory.create([{ title: 'Italian'},{ title: 'Fast Food'},{title: 'Greek'}])
food_stores = Stores::FoodStore.create ([
  {food_category_id: 1, title: 'Pizza Italia', description: "The best pizza in town", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {food_category_id: 1, title: 'Enzo', description: "Italian food right in the corner", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {food_category_id: 3, title: 'Η ταβέρνα του λευτέρη', description: "Greek food that you will love", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {food_category_id: 2, title: 'Goodies', description: "Fast n tasty", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {food_category_id: 2, title: 'BurgerKing', description: "The best burger around", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'}])

other_categories = Stores::OtherCategory.create([{ title: 'Supermarket'},{ title: 'Book Store'},{title: 'Groseries'}])
other_stores = Stores::OtherStore.create ([
  {other_category_id: 1, title: 'The corner Bookstore', description: "You name it and we find it", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Lidl', description: "Where the price meets quality", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Jumbo', description: "Toys and much much more", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Ikea', description: "All you need for your house", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Comic Bookstore', description: "Superheroes? Villains? Action Figures? We've got them all", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'The corner Bookstore', description: "You name it and we find it", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Lidl', description: "Where the price meets quality", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Jumbo', description: "Toys and much much more", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Ikea', description: "All you need for your house", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 2, title: 'The corner Bookstore', description: "You name it and we find it", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Lidl', description: "Where the price meets quality", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Jumbo', description: "Toys and much much more", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Ikea', description: "All you need for your house", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 2, title: 'The corner Bookstore', description: "You name it and we find it", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Lidl', description: "Where the price meets quality", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Jumbo', description: "Toys and much much more", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'},
  {other_category_id: 1, title: 'Ikea', description: "All you need for your house", logo_url: "logo/no-logo.png", working_hours: '8:00-4:00'}])

tags = Asset::Tag.create([{title: 'Take out'},{title: 'All you can eat'},
  {title: 'Delivery'},{title: 'Toys'},{title: 'Fresh vegetables'},{title: 'After'},{title: 'Rock-bar'},
  {title: 'Cafe-bar'},{title: 'Pub'},{title: 'Football Court'},{title: 'Tenis Court'},{title: 'Ready Food'}])
taggings = Asset::Tagging.create([])

users = User.create([
  {username: 'Snowden', email: 'snowden@gmail.com',password: 'valid_password',password_confirmation: 'valid_password'},
  {username: 'DHH', email: 'DHH@gmail.com',password: 'valid_password',password_confirmation: 'valid_password'},
  {username: 'Vspilka', email: 'vspilka@gmail.com',password: 'valid_password',password_confirmation: 'valid_password'}
  ])



events = Ead::Event.create([{image_url:'no-image.jpg',title: 'Roots Reggae at Roots', description:'Roots Reggae , dj ChillyWingz', eventable_id: 3, eventable_type:"Stores::EntertainmentStore",starts_at: '28/12/2013 20:30'},
  {image_url:'no-image.jpg',title: 'The Ultimate Booksale', description:'Old and new books really cheap, only at the corner bookstore for 2 weeks', eventable_id: 1, eventable_type:"Stores::OtherStore", starts_at: '13/1/2014', ends_at: '27/1/2014'}])


deals = Ead::Deal.create([{image_url:'no-image.jpg',title: 'Pizza Frenzy', description:'With every Pizza the second is on us',dealable_id: 1, dealable_type: "Stores::FoodStore", starts_at:'Every Friday'},
  {image_url:'no-image.jpg',title: 'All you can eat at Leuteris', description:'Eat up',dealable_id: 3, dealable_type: "Stores::FoodStore", starts_at:'Every Sunday'}])

ads = Ead::Ad.create([{image_url:'no-image.jpg',title: 'Trinity the ultimate clubbing experience', description:'Daily House/RnB, Fridays and Saturdays guest DJ SoundBlast', adable_id: 1, adable_type: "Stores::EntertainmentStore" },
  {image_url:'no-image.jpg',title: 'Roots Rock-bar', description:'Chill out with relaxing music', adable_id: 3, adable_type: "Stores::EntertainmentStore" }])


locations = Asset::Location.create([{address: "White house, New York", geocoded_id: "2" ,geocoded_type: "Stores::FoodStore" },
  {address: "Central Square, New York", geocoded_id: "4" ,geocoded_type: "Stores::EntertainmentStore"},{address: "New York", geocoded_id: "5" ,geocoded_type: "Stores::EntertainmentStore"},{address: "White house, New York", geocoded_id: "4" ,geocoded_type: "Stores::EntertainmentStore"},
  {address: "Statue of Liberty, New York", geocoded_id: "1" ,geocoded_type: "Stores::EntertainmentStore"},{address: "Moscue", geocoded_id: "3" ,geocoded_type: "Stores::EntertainmentStore"}])
#reviews = Asset::Review.create([{username: 'Snowden', email: 'snowden@gmail.com', content: 'This place is awsome, They will never find me here :D'}])

# Still need to create sample Relations and 

## Parks can be in other categories
