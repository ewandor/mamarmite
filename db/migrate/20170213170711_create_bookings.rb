class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true, index: true
      t.references :cook, foreign_key: true, index: true
      t.datetime :starts_at
      t.integer :foodies_number
      t.boolean :accepted, default: false

      t.timestamps
    end
  end
end
