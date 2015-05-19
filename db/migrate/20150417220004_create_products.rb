class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.decimal :deposit, precision: 8, scale: 2
      t.string :classification
      t.boolean :rented, default: false

      t.timestamps null: false

      # geospatial
      t.st_point :lonlat, geographic: true
    end

    add_index :products, :lonlat, using: :gist
  end
end
