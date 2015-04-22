class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 8, scale: 2
      t.decimal :deposit, precision: 8, scale: 2
      t.string :classification, default: false
      t.boolean :rented

      t.timestamps null: false
    end
  end
end
