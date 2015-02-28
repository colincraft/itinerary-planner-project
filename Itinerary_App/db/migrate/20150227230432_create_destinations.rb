class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :location
      t.string :name_d
      t.date :date
      t.integer :itinerary_id

      t.timestamps null: false
    end
  end
end
