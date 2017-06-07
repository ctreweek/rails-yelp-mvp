puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "14354567",
    category:     "Chinese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "123456",
    category:     "Indian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "45678542",
    category:     "Italian"
  },
  {
    name:         "McDonalds",
    address:      "123 Street",
    phone_number: "567568",
    category:     "French"
  },
  {
    name:         "Cosca",
    address:      "456 Avenue",
    phone_number: "4562425",
    category:     "American"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
