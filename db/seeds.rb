# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Product.delete_all

User.create(email: "user1@arpeggio.com", password: "password",
            first_name: "user", last_name: "one", date_of_birth: "1994-03-14",
            locality: "Los Angeles", postal_code: "90024", region: "CA",
            street_address: "1234 Hello Street", account_number: "1123581321",
            routing_number: "071101307")
User.create(email: "user2@arpeggio.com", password: "password",
            first_name: "user", last_name: "two", date_of_birth: "1990-06-28",
            locality: "Los Angeles", postal_code: "90024", region: "CA",
            street_address: "1234 Goodbye Street", account_number: "1123581321",
            routing_number: "071101307")
User.create(email: "user3@arpeggio.com", password: "password",
            first_name: "user", last_name: "three", date_of_birth: "1987-04-20",
            locality: "Los Angeles", postal_code: "90024", region: "CA",
            street_address: "1234 Gayley Avenue", account_number: "1123581321",
            routing_number: "071000013")
User.create(email: "user4@arpeggio.com", password: "password",
            first_name: "user", last_name: "four", date_of_birth: "1992-02-18",
            locality: "Los Angeles", postal_code: "90024", region: "CA",
            street_address: "1234 Hello Street", account_number: "1123581321",
            routing_number: "071101307")
User.create(email: "user5@arpeggio.com", password: "password",
            first_name: "user", last_name: "five", date_of_birth: "1993-12-25",
            locality: "Los Angeles", postal_code: "90024", region: "CA",
            street_address: "1234 Gayley Avenue", account_number: "1123581321",
            routing_number: "071000013")

(0..4).each do |i|
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i + 1),
    image: File.open("#{Rails.root}/public/uploads/marshall_cabinet.jpg"),
    lat: 34.065714, lon: -118.450777)
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i + 1),
    image: File.open("#{Rails.root}/public/uploads/gibson_sg.jpg"),
    lat: 34.066967, lon: -118.451839)
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i + 1),
    image: File.open("#{Rails.root}/public/uploads/sennheiser_mic.jpg"),
    lat: 34.063047, lon: -118.448019)
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i + 1),
    image: File.open("#{Rails.root}/public/uploads/yamaha_keyboard.jpg"),
    lat: 34.045829, lon: -118.565050)
end
