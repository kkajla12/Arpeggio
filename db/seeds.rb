# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(0..6).each do
	Product.create!(name: "Marshall 2x12 Speaker Cabinet",
		description: %{
			This is a sample product listing for this particular product.
			Why are you wasting time reading all of this? Don't you have
			anything else to do? Go do something else please. Thank you.
		},
		price: 30.00, deposit: 150, classification: "speaker")
	Product.create!(name: "Gibson SG Cherry Finish",
		description: %{
			This is a sample product listing for this particular product.
			Why are you wasting time reading all of this? Don't you have
			anything else to do? Go do something else please. Thank you.
		},
		price: 65.00, deposit: 350, classification: "guitar")
	Product.create!(name: "Sennheiser E835S Performance Vocal Microphone",
		description: %{
			This is a sample product listing for this particular product.
			Why are you wasting time reading all of this? Don't you have
			anything else to do? Go do something else please. Thank you.
		},
		price: 15.00, deposit: 50, classification: "mic")
	Product.create!(name: "Yamaha CP-300 88-Key Stage Piano",
		description: %{
			This is a sample product listing for this particular product.
			Why are you wasting time reading all of this? Don't you have
			anything else to do? Go do something else please. Thank you.
		},
		price: 80.00, deposit: 550, classification: "keyboard")
end