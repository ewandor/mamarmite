class ChangeAddressToCooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :cooks, :address_street
    rename_column :cooks, :address_town, :address
    remove_column :cooks, :zipcode
  end
end
