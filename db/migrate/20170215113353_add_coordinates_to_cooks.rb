class AddCoordinatesToCooks < ActiveRecord::Migration[5.0]
  def change
    add_column :cooks, :latitude, :float
    add_column :cooks, :longitude, :float
  end
end
