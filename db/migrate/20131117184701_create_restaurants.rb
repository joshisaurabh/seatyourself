class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :account_id
      t.string :name
      t.text :summary
      t.integer :max_capacity
      t.integer :avail_capacity
      t.integer :two_seater
      t.integer :four_seater
      t.integer :six_seater
      t.integer :eight_seater

      t.timestamps
    end
  end
end
