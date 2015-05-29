# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Product.delete_all

# change 300 to 5000 for large dataset
(1..300).each do |j|
  User.create(email: "user#{j}@arpeggio.com", password: "password",
              first_name: "test", last_name: "user", date_of_birth: "1993-12-25",
              locality: "Los Angeles", postal_code: "90024", region: "CA",
              street_address: "1234 Gayley Avenue", account_number: "1123581321",
              routing_number: "071000013")

(1..40).each do |i|
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/marshall_cabinet.jpg"),
    lat: 34.065714, lon: -118.450777)
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/gibson_sg.jpg"),
    lat: 34.066967, lon: -118.451839)
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/sennheiser_mic.jpg"),
    lat: 34.063047, lon: -118.448019)
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/yamaha_keyboard.jpg"),
    lat: 34.045829, lon: -118.565050)
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/marshall_cabinet.jpg"),
    lat: 34.065714, lon: -118.450777)
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/gibson_sg.jpg"),
    lat: 34.066967, lon: -118.451839)
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/sennheiser_mic.jpg"),
    lat: 34.063047, lon: -118.448019)
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/yamaha_keyboard.jpg"),
    lat: 34.045829, lon: -118.565050)
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/marshall_cabinet.jpg"),
    lat: 34.065714, lon: -118.450777)
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/gibson_sg.jpg"),
    lat: 34.066967, lon: -118.451839)
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/sennheiser_mic.jpg"),
    lat: 34.063047, lon: -118.448019)
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/yamaha_keyboard.jpg"),
    lat: 34.045829, lon: -118.565050)
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/marshall_cabinet.jpg"),
    lat: 34.065714, lon: -118.450777)
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/gibson_sg.jpg"),
    lat: 34.066967, lon: -118.451839)
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/sennheiser_mic.jpg"),
    lat: 34.063047, lon: -118.448019)
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/yamaha_keyboard.jpg"),
    lat: 34.045829, lon: -118.565050)
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/marshall_cabinet.jpg"),
    lat: 34.065714, lon: -118.450777)
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/gibson_sg.jpg"),
    lat: 34.066967, lon: -118.451839)
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/sennheiser_mic.jpg"),
    lat: 34.063047, lon: -118.448019)
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/yamaha_keyboard.jpg"),
    lat: 34.045829, lon: -118.565050)
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/marshall_cabinet.jpg"),
    lat: 34.065714, lon: -118.450777)
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/gibson_sg.jpg"),
    lat: 34.066967, lon: -118.451839)
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/sennheiser_mic.jpg"),
    lat: 34.063047, lon: -118.448019)
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/yamaha_keyboard.jpg"),
    lat: 34.045829, lon: -118.565050)
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/marshall_cabinet.jpg"),
    lat: 34.065714, lon: -118.450777)
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/gibson_sg.jpg"),
    lat: 34.066967, lon: -118.451839)
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/sennheiser_mic.jpg"),
    lat: 34.063047, lon: -118.448019)
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/yamaha_keyboard.jpg"),
    lat: 34.045829, lon: -118.565050)
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/marshall_cabinet.jpg"),
    lat: 34.065714, lon: -118.450777)
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/gibson_sg.jpg"),
    lat: 34.066967, lon: -118.451839)
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/sennheiser_mic.jpg"),
    lat: 34.063047, lon: -118.448019)
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/yamaha_keyboard.jpg"),
    lat: 34.045829, lon: -118.565050)
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/marshall_cabinet.jpg"),
    lat: 34.065714, lon: -118.450777)
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/gibson_sg.jpg"),
    lat: 34.066967, lon: -118.451839)
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/sennheiser_mic.jpg"),
    lat: 34.063047, lon: -118.448019)
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/yamaha_keyboard.jpg"),
    lat: 34.045829, lon: -118.565050)
  Product.create!(name: "Marshall 2x12 Speaker Cabinet",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 30.00, deposit: 150, classification: "speaker", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/marshall_cabinet.jpg"),
    lat: 34.065714, lon: -118.450777)
  Product.create!(name: "Gibson SG Cherry Finish",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 65.00, deposit: 350, classification: "guitar", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/gibson_sg.jpg"),
    lat: 34.066967, lon: -118.451839)
  Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 15.00, deposit: 50, classification: "mic", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/sennheiser_mic.jpg"),
    lat: 34.063047, lon: -118.448019)
  Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
    description: %{
      This is a sample product listing for this particular product.
      Why are you wasting time reading all of this? Don't you have
      anything else to do? Go do something else please. Thank you.
    },
    price: 80.00, deposit: 550, classification: "keyboard", user_id: (i),
    image: File.open("#{Rails.root}/public/uploads/yamaha_keyboard.jpg"),
    lat: 34.045829, lon: -118.565050)
end
