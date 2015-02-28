class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :origin
      t.string :city
      t.string :name_i
      t.date :departure_date
      t.date :return_date
      t.integer :creator_id

      t.timestamps null: false
    end
  end
end
