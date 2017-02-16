class RemovePhotosToCook < ActiveRecord::Migration[5.0]
  def change
    remove_column :cooks, :photo_cooker
    remove_column :cooks, :photos_location
    remove_column :cooks, :photos_recipes
  end
end
