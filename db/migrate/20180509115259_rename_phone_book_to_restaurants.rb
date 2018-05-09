class RenamePhoneBookToRestaurants < ActiveRecord::Migration[5.1]
  def change
     rename_column :restaurants, :phone_number, :phonenumber
  end
end
