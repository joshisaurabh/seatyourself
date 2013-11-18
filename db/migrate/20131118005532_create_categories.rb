class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :category_name
      t.string :price_range
      t.text :remark
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
