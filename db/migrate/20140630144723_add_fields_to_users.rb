class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :name, :string
    add_column :users, :firstname, :string
    add_column :users, :phone, :string
    add_column :users, :mobile, :string
    add_column :users, :address, :string
    add_column :users, :address2, :string
    add_column :users, :zipcode, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
