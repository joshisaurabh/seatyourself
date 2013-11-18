class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.string :name
      t.text :description
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
