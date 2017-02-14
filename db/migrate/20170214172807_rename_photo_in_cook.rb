class RenamePhotoInCook < ActiveRecord::Migration[5.0]
  def change
    rename_column :cooks, :photos_home, :photo
    remove_column :cooks, :cooker_picture, :string
    add_column :users, :photo, :string
  end
end
