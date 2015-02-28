class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :reviewable_id
      t.string :reviewable_type

      t.timestamps null: false
    end
  end
end
