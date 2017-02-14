class ChangeAdressColumnsToCookTable < ActiveRecord::Migration[5.0]
  def change
    rename_column :cooks, :address, :address_street
    add_column :cooks, :address_town, :string
  end
end
