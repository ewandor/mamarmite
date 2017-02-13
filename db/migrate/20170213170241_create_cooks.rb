class CreateCooks < ActiveRecord::Migration[5.0]
  def change
    create_table :cooks do |t|
      t.string :speciality
      t.string :address
      t.string :home_style
      t.integer :age
      t.integer :capacity
      t.string :nickname
      t.string :motto
      t.string :cooker_picture
      t.string :photos_home
      t.integer :price
      t.references :user, foreign_key: true, index: true

      t.timestamps
    end
  end
end
