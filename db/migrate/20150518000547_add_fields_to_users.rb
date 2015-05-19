class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :string
    add_column :users, :locality, :string
    add_column :users, :postal_code, :string
    add_column :users, :region, :string
    add_column :users, :street_address, :string
    add_column :users, :account_number, :string
    add_column :users, :routing_number, :string
    add_column :users, :merchant_id, :string
  end
end
