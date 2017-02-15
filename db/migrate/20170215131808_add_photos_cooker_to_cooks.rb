class AddPhotosCookerToCooks < ActiveRecord::Migration[5.0]
  def change
    add_column :cooks, :photo_cooker, :string
  end
end
