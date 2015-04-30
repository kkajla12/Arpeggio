class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.belongs_to :product, index: true

      t.timestamps null: false
    end
  end
end
