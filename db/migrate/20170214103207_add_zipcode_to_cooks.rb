class AddZipcodeToCooks < ActiveRecord::Migration[5.0]
  def change
    add_column :cooks, :zipcode, :string
  end
end
