class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 8, scale: 3
      t.decimal :deposit, precision: 8, scale: 3
      t.string :classification
      t.boolean :rented, default: false

      t.timestamps null: false
    end
  end
end
