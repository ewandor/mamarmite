class RenamePhotosToCooks < ActiveRecord::Migration[5.0]
  def change
    rename_column :cooks, :photo, :photos_recipes
    add_column :cooks, :photos_location, :string
    add_column :users, :photo_profile, :string
  end
end
