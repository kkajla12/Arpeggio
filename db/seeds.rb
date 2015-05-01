# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Product.delete_all

User.create(email: "user1@arpeggio.com", password: "password")
User.create(email: "user2@arpeggio.com", password: "password")
User.create(email: "user3@arpeggio.com", password: "password")
User.create(email: "user4@arpeggio.com", password: "password")
User.create(email: "user5@arpeggio.com", password: "password")

(0..4).each do |i|
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i + 1))
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i + 1))
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i + 1))
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i + 1))
end
