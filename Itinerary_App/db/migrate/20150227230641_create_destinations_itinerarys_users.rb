class CreateDestinationsItinerarysUsers < ActiveRecord::Migration
  def change
    create_table :destinations_itinerarys_users do |t|
      t.integer :user_id
      t.integer :itinerary_id
      t.integer :destination_id

      t.timestamps null: false
    end
  end
end
